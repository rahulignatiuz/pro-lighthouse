import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { Router } from '@angular/router';
import { Constant } from '../_global/constant';
import { User } from '../_models/user';

@Injectable({
  providedIn: 'root'
})
export class AuthenticationService {
  private currentUserSubject: BehaviorSubject<User>;
  public _baseURL: string;
  public currentUser: Observable<User>;

  constructor(private http: HttpClient, private router: Router) {
    this.currentUserSubject = new BehaviorSubject<User>(JSON.parse(localStorage.getItem('currentUser')));
    this.currentUser = this.currentUserSubject.asObservable();
    this._baseURL = Constant.baseURL;
  }

  // login(username: string, password: string) {       
  //return this.http.post<any>(`${this._baseURL}/users/login`, { username:username, password:password });
  //}
  // login(Username: string, Password: string) {
  //   return this.http.post<any>(`${this._baseURL}/login`, { Username: Username, Password: Password });
  // }
  googleLoginURL() {
    return this.http.get<any>(`${this._baseURL}/login/google`);
  }
  googleLogin(email) {
    return this.http.post<any>(`${this._baseURL}/login/google/auth`, { email: email });
  }
  getGoogleUser(email) {
    return this.http.post<any>(`${this._baseURL}/login/google/auth/user`, { email: email });
  }
  sendLoginReq(accessToken){
    return this.http.post<any>(`${this._baseURL}/login/google/admin/email`, { AccessToken: accessToken });
  }
  logout() {
    // remove user from local storage to log user out
    localStorage.removeItem('currentUser');
    this.currentUserSubject.next(null);
    this.router.navigateByUrl('/login');
  }
}