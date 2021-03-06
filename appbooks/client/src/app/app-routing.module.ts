import { Page404Component } from './components/page404/page404.component';
import { ProfileComponent } from './components/user/profile/profile.component';
import { RegisterComponent } from './components/user/register/register.component';
import { LoginComponent } from './components/user/login/login.component';
import { ListBooksComponent } from './components/admin/list-books/list-books.component';
import { DetailsBookComponent } from './components/details-book/details-book.component';
import { HomeComponent } from './components/home/home.component';
import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { OffersComponent } from './components/offers/offers.component';
import { AuthGuard } from './guards/auth.guard';

//rutas pasarle un objeto path
const routes: Routes = [
    {
      path: '',
      component:HomeComponent
    },
    {
      path: 'offers',
      component: OffersComponent,
      canActivate: [AuthGuard]
    },// TODO: only users auth
    {
      path: 'book/:id',
      component: DetailsBookComponent,
    },
    {
      path: 'admin/list-books',
      component: ListBooksComponent,
      canActivate: [AuthGuard]
    },// TODO: only users auth
    {
      path: 'user/login',
      component: LoginComponent
    },
    {
      path: 'user/register',
      component: RegisterComponent
    },
    {
      path: 'user/profile',
      component: ProfileComponent,
      canActivate: [AuthGuard]
    },// TODO: only users auth
    {
      path: '**',
      component: Page404Component
    }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
