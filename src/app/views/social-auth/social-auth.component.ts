import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from '../../_services/authentication.service';

@Component({
  selector: 'app-social-auth',
  templateUrl: './social-auth.component.html',
  styleUrls: ['./social-auth.component.scss']
})
export class SocialAuthComponent implements OnInit {
  email: string;
  message: string;
  outerDomainEmail: string;
  emailAccountNotExist: string;
  emailRequestPending: string;
  accessToken: string;
  verifyEmail: boolean = false;
  outerEmail: boolean = false;
  emailNotExist: boolean = false;
  isEmailRequestPending: boolean = false;

  constructor(private router: Router, private authService: AuthenticationService) {

    this.router.routerState.root.queryParams.subscribe(params => {
      this.email = params['email'];
      this.outerDomainEmail = params['outer-domain-email'];
      this.emailAccountNotExist = params['account-exist'];
      this.emailRequestPending = params['request-pending'];
      this.accessToken = params['access-token'];
      // console.log("access=", this.emailRequestPending);
      if (this.email) {
        this.verifyEmail = true;
        this.oauthLogin(this.email);
      } else if (this.outerDomainEmail) {
        this.outerEmail = true;
      } else if (this.emailAccountNotExist) {
        this.emailNotExist = true;
      } else if (this.emailRequestPending) {
        this.isEmailRequestPending = true;
      }
    });
  }
  ngOnInit() {
  }

  oauthLogin(email) {
    this.authService.googleLogin(email).subscribe((data) => {
      if (data.status) {
        localStorage.setItem('currentUser', JSON.stringify(data.result[0]));
        //this.router.navigateByUrl('/dashboard');
        let userData = data.result[0];
        console.log(userData);
        if (userData && userData.roleid == '1') {
          this.router.navigate(['/admin']);
        } else if (userData && userData.roleid == '2') {
          this.router.navigate(['/pm']);
        } else if (userData && userData.roleid == '3') {
          this.router.navigate(['/user']);
        } else {
          this.router.navigate(['/dashboard']);
        }
        return data;
      } else {
        this.emailNotExist = true;
      }
    });
  }
  gotoLogin() {
    this.router.navigate(['/login']);
  }
  sendLoginReq() {
    if (this.accessToken) {
      this.authService.sendLoginReq(this.accessToken).subscribe((data) => {
        if (data.status) {
          this.router.navigate(['/login']);
        }
      });
    }
  }
}
