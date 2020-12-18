import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { ChartsModule } from 'ng2-charts';
import { BsDropdownModule } from 'ngx-bootstrap/dropdown';
import { ButtonsModule } from 'ngx-bootstrap/buttons';

import {PmdashboardComponent} from './pmdashboard.component';

import { PmdashboardRoutingModule } from './pmdashboard-routing.module';
// Tabs Component
import { TabsModule } from 'ngx-bootstrap/tabs';
import { TagInputModule } from 'ngx-chips';

// Modal Component
import { ModalModule } from 'ngx-bootstrap/modal';
import { LessonsComponent } from './lessons/lessons.component';


@NgModule({  
  imports: [
    CommonModule,
    FormsModule,
    ChartsModule,
    BsDropdownModule,
    ButtonsModule,
    PmdashboardRoutingModule,
    TabsModule,
    TagInputModule,
    ModalModule.forRoot()
  ],
  declarations: [PmdashboardComponent, LessonsComponent]
})
export class PmdashboardModule { }
