import { Component, OnInit, ViewChild } from '@angular/core';
import { getStyle, hexToRgba } from '@coreui/coreui/dist/js/coreui-utilities';
import { CustomTooltips } from '@coreui/coreui-plugin-chartjs-custom-tooltips';
import { UserService } from '../../_services/user.service';
import { Title } from '@angular/platform-browser';
import { Router } from '@angular/router';
import { ModalDirective } from 'ngx-bootstrap/modal';
import { FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import { TimeoutError } from 'rxjs';

@Component({
  templateUrl: 'user-management.component.html',
  styleUrls: ['./user-management.component.scss']

})
export class UserManagementComponent implements OnInit {
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
  public isSettingSubmitted: boolean = false;
  public isValidated: boolean = false;
  public settingUserFirstName: string;
  public sett_firstName: string;
  public sett_lastName: string;
  public sett_email: string;
  public settingUserID: number;
  public settRoles: number;
  public status: number;
  public notifications: number;
  public p: any;
  public p1: number[] = [];
  public getAllPenUser: any[];
  public editData: any;
  public noDataPendingUser: boolean = false;
  public pendingUserCount: number = 0;
  public approveBtnDis = false;
  public createAccBtnDis = false;
  public isPendingUser: boolean = false;
  public requestEmail: string;
  public searchedUser: any;
  public showLoader: boolean = false;
  public userRole: number = this._user.roleid;
  public isAscendingName: boolean = true
  public orderName: string;
  public isAscendingDate: boolean = true;
  public orderDate: string;
  public isAscendingRole: boolean = true;
  public orderRole: string;
  public isAscendingStatus: boolean = true;
  public orderStatus: string;
  public isAscendingURE: boolean = true;
  public orderURE: string;

  // public _user: any = JSON.parse(localStorage.getItem('currentUser'));
  @ViewChild('registrationForm', { static: false }) public registrationForm: ModalDirective;
  @ViewChild('accountSetting', { static: false }) public accountSetting: ModalDirective;
  @ViewChild('deleteAccount', { static: false }) public deleteAccount: ModalDirective;
  @ViewChild('pendingUser', { static: false }) public pendingUser: ModalDirective;
  @ViewChild('pendingUserRegistrationForm', { static: false }) public pendingUserRegistrationForm: ModalDirective;
  @ViewChild('userExists', { static: false }) public userExists: ModalDirective;
  @ViewChild('addmultipleuser', { static: false }) public addmultipleuser: ModalDirective;
  public constructor(private titleService: Title, private userService: UserService, private router: Router, private formBuilder: FormBuilder) {
    this.titleService.setTitle("Lighthouse | User Management");
    this.getAllUser();

    this.router.routerState.root.queryParams.subscribe(params => {
      this.requestEmail = params['request-email'];
      if (this.requestEmail) {
        console.log("requestEmail----*-*", this.requestEmail);
        //this.pendingUser.show();
        // this.userPending();
        this.getAllPendingUser();

      }
    });
    this.userService.getGoogleUser(this._user.Email).subscribe((data) => {
      if (data.status)
        this.avatarImg = data.result[0].Picture;
      // console.log(data.result[0].Picture);
    });
    this.userService.getAllPendingUser().subscribe((data) => {
      if (data.status) {
        // this.noDataPendingUser = false;
        this.isPendingUser = true;
        this.pendingUserCount = data.result.length;
        console.log("index", this.pendingUserCount);

      } else {
        this.isPendingUser = false;
        this.pendingUserCount = 0;
        //  this.noDataPendingUser = true;
        // console.log(data.result.length);
      }
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
      sett_firstName: ['', Validators.required],
      sett_lastName: ['', Validators],
      sett_email: ['', Validators],
      settRoles: ['', Validators.required],
      status: ['', Validators.required],
      notifications: ['', Validators.required],
    });
    this.roles = null;
    this.p_roles = null;
    this.masterlistproject();
  }
  getAllPendingUser() {
    this.userService.getAllPendingUser().subscribe((data) => {
      if (data.status) {
        this.noDataPendingUser = false;
        this.getAllPenUser = data.result;
        if (this.requestEmail) {
          this.pendingUser.show();
        }
       // console.log("index----if---------/*", this.getAllPenUser.length);
      } else {
      //  console.log("index----else---------/*");
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
  reloadfunction() {
    setTimeout(function () {
      window.location.reload();
    }, 4500);

  }
  pendingUserDelete(index, penUser) {
    this.showLoader = true;
    this.userService.pendingUserDelete(penUser.ID, penUser.Email).subscribe((data) => {
      if (data.status) {
        // this.hideloader();
        this.showLoader = false;

        this.getAllPenUser.splice(index, 1);

        if (!this.getAllPenUser.length) {
          this.noDataPendingUser = true;
        }
        // this.getAllPenUser.filter( penUser => penUser.ID !== ID)
        //this.pendingUser.show();
      }
    });
    this.reloadfunction();
  }
  hideloader() {
    document.getElementById('loading').style.display = 'none';
  }
  getAllUser() {
    this.userService.getAllUser().subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        // console.log(this.results);
      }
    });
  }
  sortByName() {
    if (this.isAscendingName) {
      this.orderName = "ASC";
    } else {
      this.orderName = "DESC";
    }
    this.userService.getAllUserOrderByName(this.orderName).subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        this.isAscendingName = !this.isAscendingName;
      }
    });

  }
  sortByRole() {
    if (this.isAscendingRole) {
      this.orderRole = "ASC";
    } else {
      this.orderRole = "DESC";
    }
    this.userService.getAllUserOrderByRole(this.orderRole).subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        this.isAscendingRole = !this.isAscendingRole;
      }
    });

  }
  sortByStatus() {
    if (this.isAscendingStatus) {
      this.orderStatus = "ASC";
    } else {
      this.orderStatus = "DESC";
    }
    this.userService.getAllUserOrderByStatus(this.orderStatus).subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        this.isAscendingStatus = !this.isAscendingStatus;
      }
    });
  }
  sortByURE() {
    if (this.isAscendingURE) {
      this.orderURE = "ASC";
    } else {
      this.orderURE = "DESC";
    }
    this.userService.getAllUserOrderByURE(this.orderURE).subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        this.isAscendingURE = !this.isAscendingURE;
      }
    });
  }
  sortByDate() {
    if (this.isAscendingDate) {
      this.orderDate = "ASC";
    } else {
      this.orderDate = "DESC";
    }
    this.userService.getAllUserOrderByDate(this.orderDate).subscribe((data) => {
      if (data.status) {
        this.results = data.result;
        this.isAscendingDate = !this.isAscendingDate;
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
    // window.location.reload();

  }
  userRegister() {
    this.isSubmitted = false;
    this.registrationForm.show();
    //this.modalService.open(content, { centered: true });

    // this.router.navigate(['/register']);
  }
  multipleuserregister() {
    // this.isSubmitted = false;
    this.addmultipleuser.show();
    this.registrationForm.hide();
    //this.modalService.open(content, { centered: true });

    // this.router.navigate(['/register']);
  }
  userSettings(settingUserFirstName, settingUserlastName, settingUserEmail, userID, settingCurrentUserRole, emailNotifications, settingCurrentUserStatus) {
    this.settingUserFirstName = settingUserFirstName;
    this.settingUserID = userID;
    this.sett_firstName = settingUserFirstName;
    this.sett_lastName = settingUserlastName;
    this.sett_email = settingUserEmail;
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
 //   console.log("++++++++++this._user+++++++++", this._user.roleid);
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
    console.log("this.isValidated", this.userRegistrationForm.valid);
    if (this.userRegistrationForm.valid) {
      this.createAccBtnDis = true;
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
    this.isSettingSubmitted = true;
    let obj: any = {
      UserID: this._user.ID,
      SettFirstName: this.sett_firstName,
      SettLastName: this.sett_lastName,
      SettRoles: this.settRoles,
      Status: this.status,
      Notifications: this.notifications,
      SettingUserID: this.settingUserID
    };
    if (this.accountSettingForm.valid) {
      this.userService.addAccountSetting(obj).subscribe((data) => {
        window.location.reload();

      });
    }
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
    console.log("+++++++++this.pendingRegistrationForm.valid++++++++++++",this.pendingRegistrationForm.valid);
    
    if (this.pendingRegistrationForm.valid) {
      this.approveBtnDis = true;
      this.userService.addPaddingUserRegistration(obj).subscribe((data) => {
        console.log("+++++++++addPaddingUserRegistration++++++++++++",data);
        window.location.reload();
      });
    }
  }
  masterlistproject() {
    localStorage.removeItem("tabforprocess");
    localStorage.removeItem("tabID");
    var projectradiobuttn = "project";
    var projecttabselection = "tab1"
    localStorage.setItem("tabforprocess", projectradiobuttn);
    localStorage.setItem("tabID", projecttabselection);


  }
}

