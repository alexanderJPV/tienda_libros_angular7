import { AuthService } from './../../services/auth.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  constructor(private authServices: AuthService) { }
  public app_name = 'Book Store';
  public isLogged = false;
  ngOnInit() {
    this.onCheckUser();
  }
  onLogout(): void{
    this.authServices.logoutUser();
  }
  onCheckUser(): void {
    if (this.authServices.getCurrentUser() == null ) {
      this.isLogged = false;
    } else {
      this.isLogged = true;
    }
  }
}
