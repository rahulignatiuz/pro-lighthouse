import { Component, OnDestroy, Inject } from '@angular/core';
import { DOCUMENT } from '@angular/common';
import { navItems } from '../../_nav';
import { Router } from '@angular/router';
import { AuthenticationService } from "../../_services/authentication.service";

@Component({
  selector: 'app-dashboard',
  templateUrl: './default-layout.component.html'
})
export class DefaultLayoutComponent implements OnDestroy {
  private _data = localStorage.getItem('currentUser') ? JSON.parse(localStorage.getItem('currentUser')) : [{ roled: 0 }];
  public navItems = navItems[this._data.roleid].data;
  public sidebarMinimized = true;
  private changes: MutationObserver;
  public element: HTMLElement;
  public loginuser = '';
  public avatarImg: string = '';

  constructor(private router: Router, private authenticationservice: AuthenticationService, @Inject(DOCUMENT) _document?: any) {
    // this.loginuser = this._data && this._data.DisplayName ? this._data.DisplayName : 'Admin';   
    if (this._data.FirstName && this._data.LastName) {
      this.loginuser = this._data.FirstName + ' ' + this._data.LastName;
    } else if (this._data.FirstName) {
      this.loginuser = this._data.FirstName;
    } else {
      this.loginuser = this._data.Email;
    }
    this.changes = new MutationObserver((mutations) => {
      this.sidebarMinimized = _document.body.classList.contains('sidebar-minimized');
    });
    this.element = _document.body;
    this.changes.observe(<Element>this.element, {
      attributes: true,
      attributeFilter: ['class']
    });
    this.authenticationservice.getGoogleUser(this._data.Email).subscribe((data) => {
      if (data.status)
      console.log("data.result[0].Picture-----------",data.result[0].Picture);
        this.avatarImg = data.result[0].Picture;

    });
  }

  ngOnDestroy(): void {
    this.changes.disconnect();
  }

  logout() {
    this.authenticationservice.logout();
  }

}