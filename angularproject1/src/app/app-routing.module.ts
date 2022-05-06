import { Component, NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Router, RouterModule, Routes } from '@angular/router';
import { PersonalDetailsComponent } from './personal-details/personal-details.component';
import { HomeComponent } from './home/home.component';
import { AppComponent } from './app.component';
import { EmploymentComponent } from './employment/employment.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'personal', component: PersonalDetailsComponent },
  { path: 'employment', component: EmploymentComponent }
  ]


@NgModule({
  declarations: [],
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})

export class AppRoutingModule {
  
}
