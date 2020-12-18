import { Component, OnInit } from '@angular/core';
import {UserService} from '../../_services/user.service';
import { Router } from  '@angular/router';
import {Constant} from '../../_global/constant';

@Component({
  selector: 'app-pmdashboard',
  templateUrl: './pmdashboard.component.html',
  styleUrls: ['./pmdashboard.component.scss']
})
export class PmdashboardComponent implements OnInit {
  results:any[];
  public _baseURL : string;
 
  
   // barChart
   public barChartOptions: any = {
    scaleShowVerticalLines: false,
    responsive: true
  };
  public barChartLabels: string[];
  public barChartType = 'bar';
  public barChartLegend = true;

  public barChartData: any[] = [
    {data: [], label: 'Lessons'}
  ];

    // Pie user
    public userpieChartLabels: string[];
    public userpieChartData: number[];
    public userpieChartType = 'pie';

    // Pie Department
    public deptpieChartLabels: string[];
    public deptpieChartData: number[];
    public deptpieChartType = 'doughnut'; 
    
    // Pie Project
    public projpieChartLabels: string[];
    public projpieChartData: number[];
    public projpieChartType = 'pie';
    
    // Pie Category
    public catpieChartLabels: string[];
    public catpieChartData: number[];
    public catpieChartType = 'doughnut';    

    // Pie Level
    public levelpieChartLabels: string[];
    public levelpieChartData: number[];
    public levelpieChartType = 'pie';        
    
    public PhasepieChartLabels: string[];
    public PhasepieChartData: number[];
    public PhasepieChartType = 'pie';
    

constructor(private router: Router,private userService:UserService) {   

      this._baseURL = Constant.baseURL;       
      this.getBarchart(); 
      this.getUserPiechart();
      this.getDeptPiechart();
      this.getProjPiechart();
      this.getCatPiechart();
      this.getLevelPiechart();
 
  }

  ngOnInit() {
  }

  getBarchart() {
    this.userService.getlessonsBarChart().subscribe((data) => {
     if(data) {   
      data.data.push(0);
       this.barChartLabels = data.label;   
       this.barChartData = [
        {data: data.data, label: 'Lessons'}
      ];   
      console.log();                
     }
  });
}

getUserPiechart() {
  this.userService.getlessonsUserPieChart().subscribe((data) => {
   if(data) {   
    this.userpieChartLabels = data.label;
    this.userpieChartData= data.data;                      
   }
});
}

getDeptPiechart() {
  this.userService.getlessonsDeptPieChart().subscribe((data) => {
   if(data) {   
    this.deptpieChartLabels = data.label;
    this.deptpieChartData= data.data;                      
   }
});
}

getProjPiechart() {
  this.userService.getlessonsProjPieChart().subscribe((data) => {
   if(data) {   
    this.projpieChartLabels = data.label;
    this.projpieChartData= data.data;                      
   }
});
}


getCatPiechart() {
  this.userService.getlessonsCatPieChart().subscribe((data) => {
   if(data) {   
    this.catpieChartLabels = data.label;
    this.catpieChartData= data.data;                      
   }
});
}

getLevelPiechart() {
  this.userService.getlessonsLevelPieChart().subscribe((data) => {
   if(data) {   
    this.levelpieChartLabels = data.label;
    this.levelpieChartData= data.data;                      
   }
});
}
  // events
  public chartClicked(e: any): void {
    //console.log(e);
  }

  public chartHovered(e: any): void {
    //console.log(e);
  }
 
}
