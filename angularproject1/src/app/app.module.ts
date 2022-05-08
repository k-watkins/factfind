import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { MatButtonModule } from '@angular/material/button';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatIconModule } from '@angular/material/icon';
import { MatSidenavModule } from '@angular/material/sidenav';
import { PersonalDetailsComponent } from './personal-details/personal-details.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { NavigationComponent } from './navigation/navigation.component';
import { AppRoutingModule } from './app-routing.module';
import { HomeComponent } from './home/home.component';
import { EmploymentComponent } from './employment/employment.component';
import { IncomeAssetsComponent } from './income-assets/income-assets.component';
import { SummaryComponent } from './summary/summary.component';

@NgModule({
  declarations: [
    AppComponent,
    PersonalDetailsComponent,
    NavigationComponent,
    HomeComponent,
    EmploymentComponent,
    IncomeAssetsComponent,
    SummaryComponent
  ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    MatToolbarModule,
    MatButtonModule,
    MatIconModule,
    MatSidenavModule,
    AppRoutingModule
  ],
  exports: [NavigationComponent],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
