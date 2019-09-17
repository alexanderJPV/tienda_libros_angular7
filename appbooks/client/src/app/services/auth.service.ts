import { Injectable } from '@angular/core';
import {HttpClient, HttpHeaders} from '@angular/common/http';
import { Observable} from 'rxjs/internal/Observable';
import { map } from "rxjs/operators";
import { isNullOrUndefined } from "util";
import { UserInterface } from "../models/user-interface";
@Injectable({
  providedIn: 'root'
})
export class AuthService {

  constructor(private htttp: HttpClient) { }

  headers: HttpHeaders = new HttpHeaders({
    "Content-Type": "application/json"
  });
  //registra usuarios nuevos por method post
  registerUser(name: string, email: string, password: string) {
    const url_api = "http://localhost:3000/api/Users";
    return this.htttp
      .post<UserInterface>(
        url_api,
        {
          username: name,
          email: email,
          password: password
        },
        { headers: this.headers }
      )
      .pipe(map(data => data));
  }
  //login usuarios con dos parametros email y password por method post
  loginuser(email: string, password: string): Observable<any> {
    const url_api = "http://localhost:3000/api/Users/login?include=user";
    return this.htttp
      .post<UserInterface>(
        url_api,
        { email, password },
        { headers: this.headers }
      )
      .pipe(map(data => data));
  }
  //guardando el usuario en localStorage con el nombre de currentUser
  setUser(user: UserInterface): void {
    let user_string = JSON.stringify(user);
    localStorage.setItem("currentUser", user_string);
  }
  //recibimos un token como parametro y guardamos en el localStorage con el nombre de accesstoken
  setToken(token): void {
    localStorage.setItem("accessToken", token);
  }
  getToken(){
    return localStorage.getItem("accessToken");
  }
  getCurrentUser(): UserInterface {
    let user_string = localStorage.getItem("currentUser");
    if (!isNullOrUndefined(user_string)) {
      let user: UserInterface = JSON.parse(user_string);
      return user;
    } else {
      return null;
    }
  }
  logoutUser() {
    let accessToken = localStorage.getItem("accessToken");
    const url_api = `http://localhost:3000/api/Users/logout?access_token=${accessToken}`;
    localStorage.removeItem("accessToken");
    localStorage.removeItem("currentUser");
    return this.htttp.post<UserInterface>(url_api, { headers: this.headers });
  }

}
