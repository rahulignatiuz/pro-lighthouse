import { Component, OnInit, ViewChild } from '@angular/core';
import { getStyle, hexToRgba } from '@coreui/coreui/dist/js/coreui-utilities';
import { CustomTooltips } from '@coreui/coreui-plugin-chartjs-custom-tooltips';
import { UserService } from '../../_services/user.service';
import { Title } from '@angular/platform-browser';
import { Router } from '@angular/router';
import { ModalDirective } from 'ngx-bootstrap/modal';
import { FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';

@Component({
  templateUrl: 'dashboard.component.html',
  styleUrls: ['./dashboard.component.scss']

})
export class DashboardComponent implements OnInit {
  public results: any[];
  private _user = localStorage.getItem('currentUser') ? JSON.parse(localStorage.getItem('currentUser')) : [{ roled: 0 }];
  public avatarImg: string = '';
  public userRegistrationForm: FormGroup;
  public accountSettingForm: FormGroup;
  public pendingRegistrationForm: FormGroup;
  public roles: number;
  public firstName: string;
  public lastName: string;
  public email: string;
  public p_firstName: string;
  public p_lastName: string;
  public p_email: string;
  public p_roles: number;
  public isSubmitted: boolean = false;
  public isValidated: boolean = false;
  public settingUserFirstName: string;
  public settingUserID: number;
  public settRoles: number;
  public status: number;
  public notifications: number;
  public p: any;
  public p1: any;
  public getAllPenUser: any[];
  public editData: any;
  public noDataPendingUser: boolean = false;
  // public _user: any = JSON.parse(localStorage.getItem('currentUser'));
  @ViewChild('registrationForm', { static: false }) public registrationForm: ModalDirective;
  @ViewChild('accountSetting', { static: false }) public accountSetting: ModalDirective;
  @ViewChild('deleteAccount', { static: false }) public deleteAccount: ModalDirective;
  @ViewChild('pendingUser', { static: false }) public pendingUser: ModalDirective;
  @ViewChild('pendingUserRegistrationForm', { static: false }) public pendingUserRegistrationForm: ModalDirective;
  @ViewChild('userExists', { static: false }) public userExists: ModalDirective;
  public constructor(private titleService: Title, private userService: UserService, private router: Router, private formBuilder: FormBuilder) {
    this.titleService.setTitle("Lighthouse | User Management");
    this.getAllUser();
    this.userService.getGoogleUser(this._user.Email).subscribe((data) => {
      if (data.status)
        this.avatarImg = data.result[0].Picture;
      // console.log(data.result[0].Picture);
    });
  }
  ngOnInit(): void {
    // generate random values for mainChart
    this.userRegistrationForm = this.formBuilder.group({
      firstName: ['', Validators.required],
      lastName: ['', Validators],
      email: ['', Validators.required],
      roles: ['', Validators.required]
    });
    this.pendingRegistrationForm = this.formBuilder.group({
      p_firstName: ['', Validators.required],
      p_lastName: ['', Validators],
      p_email: ['', Validators.required],
      p_roles: ['', Validators.required]
    });
    this.accountSettingForm = this.formBuilder.group({
      settRoles: ['', Validators.required],
      status: ['', Validators.required],
      notifications: ['', Validators.required],
    });
    this.roles = null;
    this.p_roles = null;
  }
  getAllPendingUser() {
    this.userService.getAllPendingUser().subscribe((data) => {
      if (data.status) {
        this.noDataPendingUser = false;
        this.getAllPenUser = data.result;

      } else {
        this.noDataPendingUser = true;
        // console.log(data.result.length);
      }
    });

  }
  openUserAddForm(ID) {
    this.isSubmitted = false;
    this.userService.getPendingUserByID(ID).subscribe((data) => {
      if (data.status) {
        this.editData = data.result[0];
        if (this.editData.GivenName != "undefined") {
          this.pendingRegistrationForm.controls['p_firstName'].setValue(this.editData.GivenName);
        }
        if (this.editData.FamilyName != "undefined") {
          this.pendingRegistrationForm.controls['p_lastName'].setValue(this.editData.FamilyName);
        }
        this.pendingRegistrationForm.controls['p_email'].setValue(this.editData.Email);
        this.pendingUser.hide();
        this.pendingUserRegistrationForm.show();
      }
    });
  }
  pendingUserDelete(index, penUser) {

    this.userService.pendingUserDelete(penUser.ID, penUser.Email).subscribe((data) => {
      if (data.status) {

        this.getAllPenUser.splice(index, 1);
        console.log("index", this.getAllPenUser.length);
        if (!this.getAllPenUser.length) {
          this.noDataPendingUser = true;
        }
        // this.getAllPenUser.filter( penUser => penUser.ID !== ID)
        //this.pendingUser.show();

      }
    });
  }
  getAllUser() {
    this.userService.getAllUser().subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        console.log(this.results);
      }
    });
  }
  existsDone() {
    this.userExists.hide();
    this.registrationForm.show();

  }
  userPending() {
    this.getAllPendingUser();
    this.pendingUser.show();
  }
  closePendingModal() {

    this.pendingUser.hide();
  }
  userRegister() {
    this.isSubmitted = false;
    this.registrationForm.show();
    //this.modalService.open(content, { centered: true });

    // this.router.navigate(['/register']);
  }
  userSettings(settingUserFirstName, userID, settingCurrentUserRole, emailNotifications, settingCurrentUserStatus) {
    this.settingUserFirstName = settingUserFirstName;
    this.settingUserID = userID;
    this.settRoles = settingCurrentUserRole;
    this.notifications = emailNotifications;
    this.status = settingCurrentUserStatus;
    this.accountSetting.show();
  }
  userDelete(userID) {
    this.settingUserID = userID;
    this.deleteAccount.show();
  }
  deleteClose() {
    this.deleteAccount.hide();
  }
  deleteDone() {
    this.userService.deleteUserAccount(this.settingUserID).subscribe((data) => {
      window.location.reload();
    });
  }
  get registrationFormControls() { return this.userRegistrationForm.controls; }
  get accountSettingFormControls() { return this.accountSettingForm.controls; }
  get pendingRegistrationFormControls() { return this.pendingRegistrationForm.controls; }
  registration() {
    this.isSubmitted = true;
    let obj: any = {
      UserID: this._user.ID,
      FirstName: this.firstName,
      LastName: this.lastName,
      Email: this.email,
      Roles: this.roles,
      EmailNotification: 0,
      IsEnabled: 1
    };
    // console.log("this.isValidated",this.userRegistrationForm.valid);
    if (this.userRegistrationForm.valid) {
      this.userService.addUserRegistration(obj).subscribe((data) => {
        if (data.status) {
          console.log(data);
          window.location.reload();
          //this.router.navigate(['/dashboard']);
        } else {
          this.registrationForm.hide();
          this.userExists.show();
        }
      });
    }
  }
  userAccountSetting() {
    let obj: any = {
      UserID: this._user.ID,
      SettRoles: this.settRoles,
      Status: this.status,
      Notifications: this.notifications,
      SettingUserID: this.settingUserID
    };
    this.userService.addAccountSetting(obj).subscribe((data) => {
      window.location.reload();

    });
  }
  pendingUserRegistration() {
    this.isSubmitted = true;
    let obj: any = {
      UserID: this._user.ID,
      FirstName: this.p_firstName,
      LastName: this.p_lastName,
      Email: this.p_email,
      Roles: this.p_roles,
      EmailNotification: 0,
      IsEnabled: 1
    };
    if (this.pendingRegistrationForm.valid) {
      this.userService.addPaddingUserRegistration(obj).subscribe((data) => {
        console.log(data);
        window.location.reload();
      });
    }
  }
}
