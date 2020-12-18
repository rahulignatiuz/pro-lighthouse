import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UserdashboardComponent } from '../userdashboard/userdashboard.component';
import { LessonRecordComponent } from '../userdashboard/lesson-record/lesson-record.component';
import { MylessonsComponent } from '../userdashboard/mylessons/mylessons.component';
import { AddLessonComponent } from './add-project/add-project.component';
import { AddProcessComponent } from './add-process/add-process.component';
import { UpdateProcessComponent } from './update-process/update-process.component';
import { MylessonProcessComponent } from './mylesson-process/mylesson-process.component';
import { BulkImportComponent } from './bulk-import/bulk-import.component';

const routes: Routes = [
  {
    path: '',
    component: UserdashboardComponent,
    data: {
      title: 'Dashboard'
    }
  },
  {
    path: 'add-project',
    component: AddLessonComponent,
    data: {
      title: 'Add Project Lesson'
    }
  },
  {
    path: 'add-process',
    component: AddProcessComponent,
    data: {
      title: 'Add Process Lesson'
    }
  },
  {
    path: 'edit-lesson/:id',
    component: LessonRecordComponent,
    data: {
      title: 'Edit a Lesson'
    }
  },
  {
    path: 'lessons',
    component: MylessonsComponent,
    data: {
      title: 'Project Lessons'
    }
  },
  {
    path: 'lessons-process',
    component: MylessonProcessComponent,
    data: {
      title: 'Process Lessons'
    }
  },
  {
    path: 'update-process/:id',
    component: UpdateProcessComponent,
    data: {
      title: 'Edit a Lesson'
    }
  },
  {
    path: 'bulk-import/:id',
    component: BulkImportComponent,
    data: {
      title: 'Bulk Import'
    }
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class UserdashboardRoutingModule { }
