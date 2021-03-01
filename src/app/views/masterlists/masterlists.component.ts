import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, FormGroup, NgForm, Validators } from '@angular/forms';
import { Title } from '@angular/platform-browser';
import { ActivatedRoute, Router } from '@angular/router';
import { UserService } from '../../_services/user.service';
import { TagInputModule } from 'ngx-chips';
import { moveItemInArray, CdkDragDrop} from "@angular/cdk/drag-drop";
@Component({
  selector: 'app-masterlists',
  templateUrl: './masterlists.component.html',
  styleUrls: ['./masterlists.component.scss']
})
export class MasterlistsComponent implements OnInit {
  public onselectPhase: any;
  public projectsAsObjects: any;
  public projectForm: FormGroup;
  // public projectName: string;
  public projectNumber: number;
  public projectDescription: string;
  public projecttypeName: string;
  public projecttypeDescription: string;
  public milestoneName: string;
  public milestoneDescription: string;
  public phaseName: string;
  public phaseDescription: string;
  public functionDescription: string;
  lifecycleDescription: string;
  public projectsAsType: any;
  public milestonesAsobject: any;
  public phasesAsobject: any;
  public projecttypemilestoneAsobject: any;
  public projecttypephaseAsobject: any;
  public projecttypeAndproject: any;
  _projectType: string;
  public keywordsAsObjects: any;

  public mappingProjectTypeAndProject: any;
  public mappingProjectAndMilestone: any;
  public mappingProjectAndPhase: any;
  _Keywords: any[] = [];
  function: any[] = [];
  departmentName: any;
  editData: any;
  departmentDescription: string;
  // lifecycleName: any[] = [];
  lifecycleName: string;
  department: any[] = [];
  projectName: String;
  // milestoneName: any[] = [];
  // public phaseName: any[] = [];
  lf: string;
  public impactcategoryAsobject: any;
  public functionAsObjects: any;
  public allmappingAsObjects:any;
  public departmentAsObjects: any;
  public impactcategoriesAsObjects: any;
  public impactlevelAsObjects: any;
  public projectsPhaseAsObjects: any;
  functions: any[] = [];
  lifecycleAsObjects: any;
  _projectName: string;
  public milestonesAsObjects: any;
  public updateprocessAsObjects: any;
  public projecttypebyIdAsobjects:any;
  public updateprojecttypebyIdAsobjects:any;
  public updateprojectbyIdAsobjects:any;
  public projectbyIdAsobjects:any;
  public phasesbyIdAsobjects:any;
  public updatephasesbyIdAsobjects:any;
  public milestonesbyIdAsobjects:any;
  public updatemilestonesbyIdAsobjects:any;
  public lifecyclebyIdAsobjects:any;
  public updatelifecyclebyIdAsobjects:any;
  public functionsbyIdAsobjects:any;
  public updatefunctionsbyIdAsobjects:any;
  public departmentsbyIdAsobjects:any;
  public updatedepartmentsbyIdAsobjects:any;
  public impactcategorybyIdAsobjects:any;
  public updateimpactcategorybyIdAsobjects:any;
  public impactlevelbyIdAsobjects:any;
  public updateimpactlevelbyIdAsobjects:any;
  public getprocessbyidbyIdAsobjects:any;
  public updateprocessbyIdAsobjects:any;
  public MappingProjectTypeAndPhase: any;
  public impactlevelAsobject: any;
  public lifecycleAsobject: any;
  public functionAsobject: any;
  public departmentAsobject: any;
  Impactcategory: any[] = [];
  ImpactcategoryDescription: string;
  processAsObjects: any;
  projectid: number;
  milestoneid: number;
  phaseid: number;
  message: string;
  errForms: boolean = false;
  fetechprojectTypeId: string;
  public projectAsObjects: any;
  public isSubmitted = false;

  public selectedOption: string;
  public selectedOption2: string;
  projectNumberDisabled: boolean;


  options = [
    { name: "two", value: 1, projectname: "Project type" },
    { name: "first", value: 2, projectname: "Project " },
    { name: "three", value: 3, projectname: "Milestone" },
    { name: "four", value: 4, projectname: "Phase" },
    { name: "five", value: 5, projectname: "Lifecycle" },
    { name: "six", value: 6, projectname: "Function" },
    { name: "seven", value: 7, projectname: "Department" },
    { name: "eight", value: 8, projectname: "Impact Category" },
    { name: "nine", value: 9, projectname: "Impact Level" }

  ]
  options2 = [
    { name: "first", value: 2, projectname: "Process " },
    { name: "five", value: 5, projectname: "Lifecycle" },
    { name: "six", value: 6, projectname: "Function" },
    { name: "seven", value: 7, projectname: "Department" },
    { name: "eight", value: 8, projectname: "Impact Category" },
    { name: "nine", value: 9, projectname: "Impact Level" }

  ]
  description: number;
  additionalFormbtn: boolean;
  constructor(private router: Router, private formBuilder: FormBuilder, private userService: UserService, private route: ActivatedRoute, private titleService: Title) {
    TagInputModule.withDefaults({
      tagInput: {
        placeholder: '',
        // add here other default values for tag-input
      },
      dropdown: {
        displayBy: '',
        // add here other default values for tag-input-dropdown
      }
    });
    this.getProjecttype();

    this.getKeywords();
    this.getfunctions();
    this.getdepartments();
    this.getimpactcategories();
    this.getimpactlevel();
    this.getlifecycle();
    this.getProcess();
    this.getProjects();
    this.getmilestones();
    this.getProjectPhase();
    this.mappingprojectphase();
    this.titleService.setTitle("Lighthouse | Master List");
  }


  togglelessonFlow(e, lf) {

    let target = e.target;
    let value = target.value;
    var filtersnav = document.getElementById("001");
    var filtersnav1 = document.getElementById("002");

    if (lf == 'project') {
      filtersnav.style.display = "block";
      filtersnav1.style.display = "none";
    } else if (lf == 'Process') {
      filtersnav.style.display = "none";
      filtersnav1.style.display = "block";
    }
    var tab8 = lf;
    localStorage.setItem("tabforprocess",tab8);

  }
  showaddform() {
    var filtersnav = document.getElementById("007");
    var filtersnav1 = document.getElementById("008");
    var tab = document.getElementById("tab1");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform55() {
    var filtersnav = document.getElementById("007");
    var filtersnav1 = document.getElementById("008");
    // window.tab.reload();
    var filtersnav2 = document.getElementById("456");
    var filtersnav3 = document.getElementById("457");
    var filtersnav4 = document.getElementById("458");
    filtersnav2.style.display = "block";
    filtersnav3.style.display = "block";
    filtersnav4.style.display = "block";
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
   
    //  localStorage.setItem("tabID8",String(tab8.id));
    // var tbid = localStorage.getItem("tabID");
    // console.log("printed tbid",tab.id);
    // document.getElementById(tbid).click()
  }
  tabcontforprojecttype(){
    var tab = document.getElementById("tab1");
    localStorage.setItem("tabID",String(tab.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforproject(){
    var tab = document.getElementById("tab2");
    localStorage.setItem("tabID",String(tab.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforphase(){
    var tab8 = document.getElementById("tab8");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontformilestone(){
    var tab8 = document.getElementById("tab9");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforlifecycle(){
    var tab8 = document.getElementById("tab3");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforfunction(){
    var tab8 = document.getElementById("tab4");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontfordepartment(){
    var tab8 = document.getElementById("tab5");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforimpact(){
    var tab8 = document.getElementById("tab6");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }



  // tab process 
  tabcontforprocess(){
    var tab8 = document.getElementById("tab10");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }

  tabcontforprocesslifecycle(){
    var tab8 = document.getElementById("tab11");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforprocessfunction(){
    var tab8 = document.getElementById("tab12");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforprocessdeparment(){
    var tab8 = document.getElementById("tab13");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforprocessimpact(){
    var tab8 = document.getElementById("tab14");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  tabcontforprocesslevel(){
    var tab8 = document.getElementById("tab15");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }
  
  tabcontforlevel(){
    var tab8 = document.getElementById("tab7");
    localStorage.setItem("tabID",String(tab8.id));
    var tbid = localStorage.getItem("tabID");
    document.getElementById(tbid).click()
  }

  processtoggle(){
    var tab8 = this.lf;
    // localStorage.setItem("tabforprocess",tab8);
 
  }
 
  showaddform1() {
    var filtersnav = document.getElementById("06");
    var filtersnav1 = document.getElementById("05");
    var filtersnav2 = document.getElementById("457");
    filtersnav1.style.display = "none";
    filtersnav2.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform56() {
    var filtersnav = document.getElementById("06");
    var filtersnav1 = document.getElementById("05");
    filtersnav1.style.display = "inline-table";
    if(filtersnav){
      filtersnav.style.display = "none";

    }
  }
  showaddform2() {
    var filtersnav1 = document.getElementById("10");
    var filtersnav = document.getElementById("09");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform64() {
    var filtersnav1 = document.getElementById("23");
    var filtersnav = document.getElementById("24");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform65() {
    var filtersnav1 = document.getElementById("25");
    var filtersnav = document.getElementById("26");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform66() {
    var filtersnav1 = document.getElementById("27");
    var filtersnav = document.getElementById("28");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform67() {
    var filtersnav1 = document.getElementById("29");
    var filtersnav = document.getElementById("30");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform68() {
    var filtersnav1 = document.getElementById("31");
    var filtersnav = document.getElementById("32");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform69() {
    var filtersnav1 = document.getElementById("33");
    var filtersnav = document.getElementById("34");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform63() {
    var filtersnav1 = document.getElementById("17");
    var filtersnav = document.getElementById("18");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform62() {
    var filtersnav1 = document.getElementById("15");
    var filtersnav = document.getElementById("16");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform61() {
    var filtersnav1 = document.getElementById("13");
    var filtersnav = document.getElementById("14");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform60() {
    var filtersnav1 = document.getElementById("11");
    var filtersnav = document.getElementById("12");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform59() {
    var filtersnav1 = document.getElementById("10");
    var filtersnav = document.getElementById("09");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform57() {
    var filtersnav1 = document.getElementById("19");
    var filtersnav = document.getElementById("20");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform58() {
    var filtersnav1 = document.getElementById("21");
    var filtersnav = document.getElementById("22");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  showaddform3() {
    var filtersnav1 = document.getElementById("11");
    var filtersnav = document.getElementById("12");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform4() {
    var filtersnav1 = document.getElementById("13");
    var filtersnav = document.getElementById("14");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform5() {
    var filtersnav1 = document.getElementById("15");
    var filtersnav = document.getElementById("16");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform6() {
    var filtersnav1 = document.getElementById("17");
    var filtersnav = document.getElementById("18");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform7() {
    var filtersnav1 = document.getElementById("19");
    var filtersnav = document.getElementById("20");
    var filtersnav2 = document.getElementById("456");
    filtersnav2.style.display = "none";
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform8() {
    var filtersnav1 = document.getElementById("21");
    var filtersnav = document.getElementById("22");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
    var filtersnav2 = document.getElementById("458");
    filtersnav2.style.display = "none";
  }
  showaddform9() {
    var filtersnav = document.getElementById("24");
    var filtersnav1 = document.getElementById("23");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform10() {
    var filtersnav = document.getElementById("26");
    var filtersnav1 = document.getElementById("25");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform11() {
    var filtersnav = document.getElementById("28");
    var filtersnav1 = document.getElementById("27");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform12() {
    var filtersnav = document.getElementById("30");
    var filtersnav1 = document.getElementById("29");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform13() {
    var filtersnav = document.getElementById("32");
    var filtersnav1 = document.getElementById("31");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform14() {
    var filtersnav = document.getElementById("34");
    var filtersnav1 = document.getElementById("33");
    filtersnav1.style.display = "none";
    filtersnav.style.display = "block";
  }
  showaddform70() {
    var filtersnav1 = document.getElementById("11");
    var filtersnav = document.getElementById("12");
    filtersnav1.style.display = "inline-table";
    filtersnav.style.display = "none";
  }
  getProjecttype() {
    this.userService.getProjecttype().subscribe((data) => {
      if (data.status) {

        console.log(data)
        this.projectsAsType = data.result;

      }
    });
  }
  
  getfunctions() {
    this.userService.getfunctions().subscribe((data) => {
      console.log(data);
      this.functionAsObjects = data.result;

    });
  }
  mappingprojectphase() {
    this.userService.mappingprojectphase().subscribe((data) => {
      console.log(data);
      this.allmappingAsObjects = data.result;

    });
  }
  
  public getProjectPhase() {
    this.userService.getProjectPhase().subscribe((data) => {
      // console.log('yess',this.projectsPhaseAsObjects)
      this.projectsPhaseAsObjects = data.result;
    });
  }
  getimpactcategories() {
    this.userService.getcategories().subscribe((data) => {
      console.log(data);
      this.impactcategoriesAsObjects = data.result;
    });
  }
  getimpactlevel() {
    this.userService.getimpactlevel().subscribe((data) => {
      this.impactlevelAsObjects = data.result;
    });
  }
  getlifecycle() {
    this.userService.getlifecycle().subscribe((data) => {
      console.log(data);
      this.lifecycleAsObjects = data.result;
    });
  }

  public onselectProjecttype(e) { }

  ngOnInit() {
    if(this.isSubmitted == false){

    
    this.projectForm = this.formBuilder.group({
      projectName: ['', Validators.required],
      projectNumber: ['', Validators.required],
      _projectType: ['', Validators.required],
      projectDescription: ['', Validators.required],
      projecttypeName: ['', Validators.required],
      projecttypeDescription: ['', Validators.required],
      milestoneName: ['', Validators.required],
      milestoneDescription: ['', Validators.required],
      phaseName: ['', Validators.required],
      lifecycleDescription: ['', Validators.required],
      _Keywords: ['', Validators.required],
      function: ['', Validators.required],
      lifecycleName: ['', Validators.required],
      functionDescription: ['', Validators.required],
      departmentName: ['', Validators.required],
      departmentDescription: ['', Validators.required],
      ImpactcategoryName: ['', Validators.required],
      ImpactcategoryDescription: ['', Validators.required],
      ImpactlevelName: ['', Validators.required],
      ImpactlevelDescription: ['', Validators.required],
      processName: ['', Validators.required],
      processDescription: ['', Validators.required],
      phaseDescription: ['', Validators.required],
      title: ['', Validators.required],
      submitid: ['', Validators.required]
    });
    this.selectedOption = "first";
    this.selectedOption2 = "two";
    this.tabmethod();
  }
  if(this.isSubmitted == true){
    var toggle = localStorage.getItem("tabforprocess");
    this.lf = toggle;
  }

  // setTimeout(function () {
  //   localStorage.removeItem("tabforprocess")
  //   var pp = "project";
  //   localStorage.setItem("tabforprocess",pp);
  // }, 10);
    
    // this.processtoggle();

    // this.lf = toggle;
    // if(toggle == 'project'){
    // this.lf = 'project';
    // }else if(toggle == 'Process'){
    // this.lf = 'Process';
    // }
    
  }

  tabmethod(){
    var tbid = localStorage.getItem("tabID");
    this.isSubmitted = true;
    document.getElementById(tbid).click();
    var toggle = localStorage.getItem("tabforprocess");
    console.log(toggle);
    // document.getElementById(toggle).click();
    var filtersnav = document.getElementById("001");
    var filtersnav1 = document.getElementById("002");
    this.ngOnInit();
    if (toggle == 'project') {
      filtersnav.style.display = "block";
      filtersnav1.style.display = "none";
    } else if (toggle == 'Process') {
      filtersnav.style.display = "none";
      filtersnav1.style.display = "block";
    }
  }

  AddProjects(form  ) {

    console.log(545454); 
    document.getElementById('id22858888').style.display='block';


    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    this.fetechprojectTypeId = form.value._projectType;
    console.log('1212', this.fetechprojectTypeId)
    let o: any = {
      ProjectTypeID: form.value._projectType,
      Name: form.value.projectName.trim(),
      LPN: form.value.projectNumber,
      Description: form.value.projectDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };
    // console.log(this.projectName[0].value);
    this.userService.AddProjects(o).subscribe((data) => {
      if (data.status) {
        this.projectid = data.data.insertId;

        // this.userService.AddProjects(data).subscribe((data) => { });
        console.log(this.projectid)
        this.userService.addmappingprojectprojecttype(this.projectid, this.fetechprojectTypeId).subscribe((data) => {
          if (data.status) {
            console.log(data, this.projectid, this.fetechprojectTypeId)

            this.projectsAsType = data.result;
            this.reloadfunction();
          }
        });
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
      // console.log(data.data.insertId)
      this.projectsAsObjects = data.result;
    });
    
  
  }
  getProjects() {
    this.userService.getProjects().subscribe((data) => {
      if (data.status) {
        this.projectAsObjects = data.result;
      }
    });
  }
  onSubmit(form  ) {

    
    console.log('jhgf', form);

    //this.AddProjects(form)
  }
  // addmappingprojectprojecttype(ProjectID,ProjecttypeID){
  //   this.userService.addmappingprojectprojecttype(ProjectID,ProjecttypeID).subscribe((data) => {
  //     if (data.status) {
  //       console.log(data)

  //       this.projectsAsType = data.result;

  //     }
  //   });
  // }
  AddProjecttype(form  ) {
    document.getElementById('id22858888').style.display='block';

    this.isSubmitted = true;
      let _user: any = JSON.parse(localStorage.getItem('currentUser'));
      let o: any = {

        Name: form.value.projecttypeName.trim(),
        Description: form.value.projecttypeDescription.trim(),
        CreatedBy: _user.ID,
        UpdatedBy: _user.ID,
        IsEnabled: 1
      };
  
      console.log(form);  
      this.userService.AddProjecttype(o).subscribe((data) => {
  
        if (data.status) {
  
          console.log(data)
          this.projecttypeAndproject = data.result;
    this.reloadfunction();  
        }
        else{
          if(data.result == "ER_DUP_ENTRY"){
            document.getElementById('id22858888').style.display='none';
            document.getElementById('id33322222').style.display='block';
            console.log('5555555555555555555555555555',data);
          }
       
        }
      });
       

  
  }
  public projectFormFields() {
    if (this.projecttypeName && this.description > 0) {
      this.additionalFormbtn = false;
    } else {
      this.additionalFormbtn = false;
    }
  }
 
  getmilestones() {
    this.userService.getmilestones().subscribe((data) => {
      this.milestonesAsObjects = data.result;
    });
  }

  getdepartments() {
    this.userService.getdepartments().subscribe((data) => {
      // console.log(data);
      this.departmentAsObjects = data.result;

    });
  }
  getProcess() {
    this.userService.getProcess().subscribe((data) => {
      if (data.status) {
        this.processAsObjects = data.result;
        console.log(data)
      }
    });
  }
  Addmilestones(form  ) {
    document.getElementById('id22858888').style.display='block';

    console.log(545454);
    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    this.fetechprojectTypeId = form.value._projectType;
    //console.log('1212',this.fetechprojectTypeId)
    let o: any = {
      ProjectTypeID: form.value._projectType,
      // Name: this.milestoneName[0].value,
      Name: form.value.milestoneName.trim(),
      Description: form.value.milestoneDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };
    // console.log(this.milestoneName[0].value);
    this.userService.Addmilestones(o).subscribe((data) => {
      console.log('6555555555',data)
      if (data.status) {
     

        this.milestoneid = data.data.insertId;
        this.reloadfunction();
        // this.userService.Addmilestones(data).subscribe((data) => { });
       // console.log(this.milestoneid)
       
        this.userService.addmappingprojectypemilestone(this.fetechprojectTypeId, this.milestoneid).subscribe((data) => {
          if (data.status) {
            console.log(data, this.milestoneid, this.fetechprojectTypeId)

            this.projecttypemilestoneAsobject = data.result;

          }
        });
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
      // console.log(data.data.insertId)
      this.milestonesAsobject = data.result;
    });
  
  
  }


  Addphases(form  ) {
    document.getElementById('id22858888').style.display='block';

    console.log(545454);
    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    this.fetechprojectTypeId = form.value._projectType;
    //console.log('1212',this.fetechprojectTypeId)
    let o: any = {
      ProjectTypeID: form.value._projectType,
      // Name: this.phaseName[0].value,
      Name: form.value.phaseName.trim(),
      Description: form.value.phaseDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };
    console.log(form);
    this.userService.Addphases(o).subscribe((data) => {
      if (data.status) {
        this.phaseid = data.data.insertId;

        // this.userService.Addmilestones(data).subscribe((data) => { });
        console.log(this.phaseid)
        this.userService.addmappingprojectypephase(this.fetechprojectTypeId, this.phaseid).subscribe((data) => {
          if (data.status) {
            //console.log(data,this.milestoneid,this.phaseid)
            this.projecttypephaseAsobject = data.result;
            this.reloadfunction();
          }
        });
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
      // console.log(data.data.insertId)
      this.phasesAsobject = data.result;
    });
    
  
  }

  Addlifecycle(form  ) {
    document.getElementById('id22858888').style.display='block';

    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {
      // Name: form.value.lifecycleName[0].value,
      Name: form.value.lifecycleName.trim(),
      Description: form.value.lifecycleDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };

    console.log(this.lifecycleName);
    this.userService.Addlifecycle(o).subscribe((data) => {

      if (data.status) {

        console.log(data)
        this.lifecycleAsobject = data.result;
        this.reloadfunction();
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    })
    
  

  }

  onDrop(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.processAsObjects, event.previousIndex, event.currentIndex);
    this.processAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updateprocess(project.ID, project.order).subscribe((data) => {
        this.updateprocessAsObjects = data.result;
      });
    });
    this.reloadfunction();

  }
  onDrop1(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.lifecycleAsObjects, event.previousIndex, event.currentIndex);
    this.lifecycleAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      console.log(project.order)

      this.userService.updatelifecycle(project.ID, project.order).subscribe((data) => {
        this.lifecycleAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop2(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.functionAsObjects, event.previousIndex, event.currentIndex);
    // console.log(this.functionAsObjects)
    this.functionAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      console.log(project.order);
      this.userService.updatefunction(project.ID, project.order).subscribe((data) => {
        this.functionAsObjects = data.result;
      });
    });
    this.reloadfunction();
    // window.location.reload();


  }
  onDrop3(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.departmentAsObjects, event.previousIndex, event.currentIndex);
    this.departmentAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updatedepartment(project.ID, project.order).subscribe((data) => {
        this.departmentAsObjects = data.result;
      });
    });
    this.reloadfunction();
    // window.location.reload();


  }
  onDrop4(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.impactcategoriesAsObjects, event.previousIndex, event.currentIndex);
    this.impactcategoriesAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updateimpactcategory(project.ID, project.order).subscribe((data) => {
        this.impactcategoriesAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop5(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.projectsAsType, event.previousIndex, event.currentIndex);
    this.projectsAsType.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updateprojecttype(project.ID, project.order).subscribe((data) => {
        this.projectsAsType = data.result;
      });
    });
    var url = document.getElementById('tab1');
    window.location.reload();
    url.style.display = "block";
    console.log(url);
    // this.reloadfunction();

  }
  onDrop6(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.projectAsObjects, event.previousIndex, event.currentIndex);
    this.projectAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updateprojectindex(project.ID, project.order).subscribe((data) => {
        this.projectAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop7(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.projectsPhaseAsObjects, event.previousIndex, event.currentIndex);
    this.projectsPhaseAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updatephase(project.ID, project.order).subscribe((data) => {
        this.projectsPhaseAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop8(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.milestonesAsObjects, event.previousIndex, event.currentIndex);
    this.milestonesAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updatemilestone(project.ID, project.order).subscribe((data) => {
        this.milestonesAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop9(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.lifecycleAsObjects, event.previousIndex, event.currentIndex);
    this.lifecycleAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updatelifecycle(project.ID, project.order).subscribe((data) => {
        this.lifecycleAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();
    // var url = document.getElementById('tab3');
    // var url1 = document.getElementById('tab-content3');

    
    // url.style.display = "block";
    // url1.style.display = "block";
    // console.log(url);

  }
  onDrop10(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.functionAsObjects, event.previousIndex, event.currentIndex);
    this.functionAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updatefunction(project.ID, project.order).subscribe((data) => {
        this.functionAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop11(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.departmentAsObjects, event.previousIndex, event.currentIndex);
    this.departmentAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updatedepartment(project.ID, project.order).subscribe((data) => {
        this.departmentAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop12(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.impactcategoriesAsObjects, event.previousIndex, event.currentIndex);
    this.impactcategoriesAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      this.userService.updateimpactcategory(project.ID, project.order).subscribe((data) => {
        this.impactcategoriesAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();


  }
  onDrop13(event: CdkDragDrop<string[]>) {
    // debugger; 
    moveItemInArray(this.impactlevelAsObjects, event.previousIndex, event.currentIndex);
    this.impactlevelAsObjects.forEach((project, idx) => {
      project.order = idx + 1;

      this.userService.updateimpactlevel(project.ID, project.order).subscribe((data) => {
        this.impactlevelAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();

  }

  onDrop14(event: CdkDragDrop<string[]>) {
    // debugger; 
    moveItemInArray(this.impactlevelAsObjects, event.previousIndex, event.currentIndex);
    this.impactlevelAsObjects.forEach((project, idx) => {
      project.order = idx + 1;

      this.userService.updateimpactlevel(project.ID, project.order).subscribe((data) => {
        this.impactlevelAsObjects = data.result;
      });
    });
    // this.reloadfunction();
    window.location.reload();

  }
  onDrop20(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.mappingProjectTypeAndProject, event.previousIndex, event.currentIndex);
    this.mappingProjectTypeAndProject.forEach((project, idx) => {
      project.order = idx + 1;
      console.log(project.ID);
      this.userService.updatemappingprojectandprojecttype(project.ID, project.order).subscribe((data) => {
        this.mappingProjectTypeAndProject = data.result;
      });
    });
    window.location.reload();

  }
  onDrop21(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.mappingProjectAndMilestone, event.previousIndex, event.currentIndex);
    let currentindex =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing;
     let mapid =  this.mappingProjectAndMilestone[event.currentIndex+1].mid;
    let currentindex1 =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing+1;
    //  console.log(currentindex);
    //  console.log(currentindex1);
    //  console.log(previousindex);
    console.log(currentindex);
    console.log('mid',mapid);
    // console.log(currentindex1)
    
    this.mappingProjectAndMilestone.forEach((project, idx) => {
     
      project.order = idx + 1;
       let order2 =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing++;
      console.log(order2);
      // if(mapid == mapid){
      // let order2 =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing;
      // console.log(order2);
      // this.userService.updatemappingProjectAndMilestone(project.mid,order2).subscribe((data) => {
      //   this.mappingProjectAndMilestone = data.result;
      
      // });
      // }else
      // {
      //   let order2 =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing ++;
      
      //   console.log(order2);
      //   this.userService.updatemappingProjectAndMilestone(project.mid,order2).subscribe((data) => {
      //     this.mappingProjectAndMilestone = data.result;
        
      //   });
      // }
      // console.log(order2);
      
      //   console.log(currentindex);
      // // console.log( project.order);
      // console.log('121',project.mid);
    //  console.log(ab);
      // console.log(project.ID);
      // console.log(this.mappingProjectAndMilestone);
      this.userService.updatemappingProjectAndMilestone(project.mid,order2).subscribe((data) => {
        this.mappingProjectAndMilestone = data.result;
      
      });
    });
      // this.userService.updatemappingProjectAndMilestone(mapid,currentindex).subscribe((data) => {
      //     this.mappingProjectAndMilestone = data.result;
  
      //   });
    // this.reloadfunction(); 
    setTimeout(function () {
      window.location.reload();
    }, 1500);
  }
  onDrop24(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.MappingProjectTypeAndPhase, event.previousIndex, event.currentIndex);
    let currentindex =  this.MappingProjectTypeAndPhase[event.currentIndex+1].Indexing;
     let mapid =  this.MappingProjectTypeAndPhase[event.currentIndex+1].mid;
    let currentindex1 =  this.MappingProjectTypeAndPhase[event.currentIndex+1].Indexing+1;
    //  console.log(currentindex);
    //  console.log(currentindex1);
    //  console.log(previousindex);
    console.log(currentindex);
    console.log('mid',mapid);
    // console.log(currentindex1)
    
    this.MappingProjectTypeAndPhase.forEach((project, idx) => {
     
      project.order = idx + 1;
       let order2 =  this.MappingProjectTypeAndPhase[event.currentIndex+1].Indexing++;
      console.log(order2);
      // if(mapid == mapid){
      // let order2 =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing;
      // console.log(order2);
      // this.userService.updatemappingProjectAndMilestone(project.mid,order2).subscribe((data) => {
      //   this.mappingProjectAndMilestone = data.result;
      
      // });
      // }else
      // {
      //   let order2 =  this.mappingProjectAndMilestone[event.currentIndex+1].Indexing ++;
      
      //   console.log(order2);
      //   this.userService.updatemappingProjectAndMilestone(project.mid,order2).subscribe((data) => {
      //     this.mappingProjectAndMilestone = data.result;
        
      //   });
      // }
      // console.log(order2);
      
      //   console.log(currentindex);
      // // console.log( project.order);
      // console.log('121',project.mid);
    //  console.log(ab);
      // console.log(project.ID);
      // console.log(this.mappingProjectAndMilestone);
      this.userService.updateMappingProjectTypeAndPhase(project.mid,order2).subscribe((data) => {
        this.mappingProjectAndMilestone = data.result;
      
      });
    });
      // this.userService.updatemappingProjectAndMilestone(mapid,currentindex).subscribe((data) => {
      //     this.mappingProjectAndMilestone = data.result;
  
      //   });
    // this.reloadfunction(); 
    setTimeout(function () {
      window.location.reload();
    }, 1500);
  }
  onDrop22(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.MappingProjectTypeAndPhase, event.previousIndex, event.currentIndex);
     let currentindex =  this.MappingProjectTypeAndPhase[0].Indexing;
     let previousindex =  this.MappingProjectTypeAndPhase[1].Indexing;
     let currentindex1 =  this.MappingProjectTypeAndPhase[0].mid;
     let previousindex1 =  this.MappingProjectTypeAndPhase[1].mid;
    //  console.log( this.MappingProjectTypeAndPhase[event.previousIndex].Indexing,this.MappingProjectTypeAndPhase[event.previousIndex].mid);
     console.log(this.MappingProjectTypeAndPhase[event.currentIndex].mid,this.MappingProjectTypeAndPhase[event.currentIndex].Indexing);
     console.log( this.MappingProjectTypeAndPhase[event.previousIndex].mid,this.MappingProjectTypeAndPhase[event.previousIndex].Indexing,);
    //  console.log( this.MappingProjectTypeAndPhase[event.previousIndex].mid);
    //  console.log( this.MappingProjectTypeAndPhase[event.currentIndex].mid);
    //  console.log(currentindex);
    //  console.log(currentindex1);
    //  console.log(previousindex);
    //  console.log(previousindex1);
    //  console.log(currentindex2);
    this.MappingProjectTypeAndPhase.forEach((project, idx) => {
      project.order = idx + 1;
      
      // project.Indexing =project.Indexing + 1;

      // console.log('121',project.Indexing);
      // console.log(project.ID,project.order);
      // console.log(project.Indexing);
      // console.log(this.MappingProjectTypeAndPhase);
      
        // console.log(currentindex);
        // console.log(previousindex);
        // let previousmid =project.mid;
        // let currentmid =project.mid;
        // console.log(previousmid);
        // console.log(currentmid);
        // console.log(project.mid);
        // console.log(project.Indexing);
        
      //     this.userService.updateMappingProjectTypeAndPhase(project.mid, project.order).subscribe((data) => {
      //   this.mappingProjectTypeAndProject = data.result;
      // });
      //   this.userService.updateMappingProjectTypeAndPhase(currentindex1,previousindex ).subscribe((data) => {
      //     this.mappingProjectTypeAndProject = data.result;
      //     this.userService.updateMappingProjectTypeAndPhase(previousindex1, currentindex).subscribe((data) => {
      //   this.mappingProjectTypeAndProject = data.result;
      // });
      //   }); 
        
      
      // this.userService.updateMappingProjectTypeAndPhase(project.mid, project.order).subscribe((data) => {
      //   this.mappingProjectTypeAndProject = data.result;
      // });
    });
      //  this.userService.updateMappingProjectTypeAndPhase(this.MappingProjectTypeAndPhase[event.currentIndex].mid,this.MappingProjectTypeAndPhase[event.previousIndex].Indexing-2 ).subscribe((data) => {
      //     this.mappingProjectTypeAndProject = data.result;
      //     this.userService.updateMappingProjectTypeAndPhase(this.MappingProjectTypeAndPhase[event.previousIndex].mid,this.MappingProjectTypeAndPhase[event.currentIndex].Indexing).subscribe((data) => {
      //   this.mappingProjectTypeAndProject = data.result;
      // });
      //   });
    
    // this.reloadfunction(); 
    // window.location.reload();
  }
  onDrop23(event: CdkDragDrop<string[]>) {
    moveItemInArray(this.allmappingAsObjects, event.previousIndex, event.currentIndex);
    this.allmappingAsObjects.forEach((project, idx) => {
      project.order = idx + 1;
      console.log(project.mid);
      // console.log(this.allmappingAsObjects);

      this.userService.updateMappingProjectTypeAndPhase(project.mid,project.order).subscribe((data) => {
        this.allmappingAsObjects = data.result;
      });
    });
    setTimeout(function () {
      window.location.reload();
    }, 1000);

  }
  // Addfunction(form  ) {

  //   console.log(545454);

  //   let _user: any = JSON.parse(localStorage.getItem('currentUser'));
  //   this.fetechprojectTypeId = form.value._projectType;
  //   //console.log('1212',this.fetechprojectTypeId)
  //   let o: any = {
  //     ProjectTypeID: form.value._projectType,
  //     Name: form.value.phaseName,
  //     Description: form.value.phaseDescription,
  //     CreatedBy: _user.ID,
  //     UpdatedBy: _user.ID,
  //     IsEnabled: 1
  //   };
  //   console.log(form);
  //   this.userService.Addfunction(o).subscribe((data) => {
  //     if (data.status) {
  //       this.phaseid = data.data.insertId;

  //       this.userService.Addmilestones(data).subscribe((data) => { });
  //       console.log(this.phaseid)
  //       this.userService.addmappingprojectypephase(this.fetechprojectTypeId, this.phaseid).subscribe((data) => {
  //         if (data.status) {
  //           //console.log(data,this.milestoneid,this.phaseid)

  //           this.projecttypephaseAsobject = data.result;

  //         }
  //       });
  //     }
  //     // console.log(data.data.insertId)
  //     this.phasesAsobject = data.result;
  //   });
  //   this.reloadfunction();
  // }

  // Adddepartment(form  ) {

  //   console.log(545454);

  //   let _user: any = JSON.parse(localStorage.getItem('currentUser'));
  //   this.fetechprojectTypeId = form.value._projectType;
  //   //console.log('1212',this.fetechprojectTypeId)
  //   let o: any = {
  //     ProjectTypeID: form.value._projectType,
  //     Name: form.value.phaseName,
  //     Description: form.value.phaseDescription,
  //     CreatedBy: _user.ID,
  //     UpdatedBy: _user.ID,
  //     IsEnabled: 1
  //   };
  //   console.log(form);
  //   this.userService.Adddepartment(o).subscribe((data) => {
  //     if (data.status) {
  //       this.phaseid = data.data.insertId;

  //       this.userService.Addmilestones(data).subscribe((data) => { });
  //       console.log(this.phaseid)
  //       this.userService.addmappingprojectypephase(this.fetechprojectTypeId, this.phaseid).subscribe((data) => {
  //         if (data.status) {
  //           //console.log(data,this.milestoneid,this.phaseid)

  //           this.projecttypephaseAsobject = data.result;

  //         }
  //       });
  //     }
  //     // console.log(data.data.insertId)
  //     this.phasesAsobject = data.result;
  //   });
  //   this.reloadfunction();
  // }


  // Addimpactcategory(form  ) {

  //   console.log(545454);

  //   let _user: any = JSON.parse(localStorage.getItem('currentUser'));
  //   this.fetechprojectTypeId = form.value._projectType;
  //   //console.log('1212',this.fetechprojectTypeId)
  //   let o: any = {
  //     ProjectTypeID: form.value._projectType,
  //     Name: form.value.phaseName,
  //     Description: form.value.phaseDescription,
  //     CreatedBy: _user.ID,
  //     UpdatedBy: _user.ID,
  //     IsEnabled: 1
  //   };
  //   console.log(form);
  //   this.userService.Addimpactcategory(o).subscribe((data) => {
  //     if (data.status) {
  //       this.phaseid = data.data.insertId;

  //       this.userService.Addmilestones(data).subscribe((data) => { });
  //       console.log(this.phaseid)
  //       this.userService.addmappingprojectypephase(this.fetechprojectTypeId, this.phaseid).subscribe((data) => {
  //         if (data.status) {
  //           //console.log(data,this.milestoneid,this.phaseid)

  //           this.projecttypephaseAsobject = data.result;

  //         }
  //       });
  //     }
  //     // console.log(data.data.insertId)
  //     this.phasesAsobject = data.result;
  //   });
  //   this.reloadfunction();
  // }



  reloadfunction() {
    setTimeout(function () {
      window.location.reload();
    }, 1000);

  }


  getKeywords() {
    this.userService.getKeywords().subscribe((data) => {
      if (data.status) {
        this.keywordsAsObjects = data.result;
        // this.columns = data.result;
        console.log(data);
      }
    });
  }

  getMappingProjectTypeAndProject(ProjecttypeID) {
    this.userService.getMappingProjectTypeAndProject(ProjecttypeID).subscribe((data) => {
      if (data.status) {
        this.mappingProjectTypeAndProject = data.result;

      }
    });
  }
  // public onselectProjecttype1(e) {
  //   //console.log(this.projectName)
  //   // console.log(e.target.value)
  //   this._projectName = '';
  //   this.mappingProjectTypeAndProject = [];
  //   //  this.projectsPhaseAsObjects = [];
  //   // this.mappingProjectAndMilestone = [];
  //   this.getMappingProjectTypeAndProject(e.target.value);
  //   this.mappingProjectAndMilestone = [];
  //   this.mappingProjectAndPhase = [];
  //   this.getMappingProjectAndMilestone(e.target.value);
  //   this.getMappingProjectTypeAndPhase(e.target.value);



  // }

  public onselectProjecttype1(e) {
    this._projectName = '';
    this.mappingProjectTypeAndProject = [];
    this.getMappingProjectTypeAndProject(e.target.value);
  }

  public onselectProjecttype2(e) {
    //console.log(this.projectName)
    // console.log(e.target.value)
    this._projectName = '';
    this.mappingProjectTypeAndProject = [];    
    this.mappingProjectAndPhase = [];
    this.getMappingProjectTypeAndPhase(e.target.value);

  }

  public onselectProjecttype3(e) {
    //console.log(this.projectName)
    // console.log(e.target.value)
    this._projectName = '';
    // this.mappingProjectTypeAndProject = [];  
    this.mappingProjectAndMilestone = [];
    this.getMappingProjectAndMilestone(e.target.value);

    // this.mappingProjectAndPhase = [];
    // this.getMappingProjectTypeAndPhase(e.target.value);

  }

  getMappingProjectAndMilestone(ProjecttypeID) {
    this.userService.getMappingProjectAndMilestone(ProjecttypeID).subscribe((data) => {
      if (data.status) {
        this.mappingProjectAndMilestone = data.result;
        // console.log(data);
      }
    });

  }

  getMappingProjectTypeAndPhase(ProjecttypeID) {
    this.userService.getMappingProjectTypeAndPhase(ProjecttypeID).subscribe((data) => {
      if (data.status) {
        this.MappingProjectTypeAndPhase = data.result;
        console.log(data);
      }
    });
  }
  // Addlifecycle(form  ) {

  //   let _user: any = JSON.parse(localStorage.getItem('currentUser'));
  //   let o: any = {

  //     // Name: form.value.lifecycleName,
  //     Name: this.lifecycleName[0].value,
  //     Description: form.value.lifecycleDescription,
  //     CreatedBy: _user.ID,
  //     UpdatedBy: _user.ID,
  //     IsEnabled: 1
  //   };

  //   console.log(this.lifecycleName[0].value);
  //   this.userService.Addlifecycle(o).subscribe((data) => {

  //     if (data.status) {

  //       console.log(data)
  //       this.lifecycleAsobject = data.result;

  //     }
  //   })
  //   this.reloadfunction();

  // }

  Addfunction(form  ) {
    document.getElementById('id22858888').style.display='block';

    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {
      // Name: form.value.function[0].value,
      Name: form.value.function.trim(),
      Description: form.value.functionDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };

    console.log(form);
    this.userService.Addfunction(o).subscribe((data) => {

      if (data.status) {

        console.log(data)
        this.functionAsobject = data.result;
        this.reloadfunction();
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    })
    
  
  }

  Adddepartment(form  ) {
    document.getElementById('id22858888').style.display='block';

    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {

      // Name: form.value.departmentName[0].value,
      Name: form.value.departmentName.trim(),
      Description: form.value.departmentDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };

    console.log(form);
    // debugger;
    this.userService.Adddepartment(o).subscribe((data) => {
      console.log('sssssssssssddddddddddddddddddddddddddddddddd',data);
      if (data.status) { 
        this.departmentAsobject = data.result;
        this.reloadfunction();
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    })
  // this.reloadfunction();
  

  }


  Addimpactcategory(form) {
    document.getElementById('id22858888').style.display='block';

    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {

      // Name: form.value.ImpactcategoryName[0].value,
      Name: form.value.ImpactcategoryName.trim(),
      Description: form.value.ImpactcategoryDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };

    console.log(form);
    this.userService.Addimpactcategory(o).subscribe((data) => {

      if (data.status) {

        console.log(data)
        this.impactcategoryAsobject = data.result;
        this.reloadfunction();
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    })
    
  
  }


  Addimpactlevel(form) {
    document.getElementById('id22858888').style.display='block';

    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {

      // Name: form.value.ImpactcategoryName[0].value,
      Name: form.value.ImpactcategoryName.trim(),
      Description: form.value.ImpactcategoryDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };

    console.log(form);
    this.userService.Addimpactlevel(o).subscribe((data) => {

      if (data.status) {

        console.log(data)
        this.impactlevelAsobject = data.result;
        this.reloadfunction();
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    })
    
  
  }
  Addprocess(form) {
    document.getElementById('id22858888').style.display='block';

    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {
      // Name: form.value.processName[0].value,
      Name: form.value.processName.trim(),
      Description: form.value.processDescription.trim(),
      CreatedBy: _user.ID,
      UpdatedBy: _user.ID,
      IsEnabled: 1
    };

    console.log(form);
    this.userService.Addprocess(o).subscribe((data) => {

      if (data.status) {

        console.log(data)
        this.lifecycleAsobject = data.result;
        this.reloadfunction();
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    })
   
  

  }
  updateprocess(ID,Indexing){
    
    this.userService.updateprocess(ID,Indexing).subscribe((data) => {
      if (data.status) {
      this.updateprocessAsObjects = data.result;
      }
      else{
        if(data.result == "ER_DUP_ENTRY"){
          document.getElementById('id22858888').style.display='none';
          document.getElementById('id33322222').style.display='block';
          console.log('5555555555555555555555555555',data);
        }
     
      }
    });
  }
  getidinurl(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getProjecttypebyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
      this.projecttypebyIdAsobjects = data.result;
     
    });
    
  }
  updateprojecttypebyid(ID,Name){
    // console.log(Name.trim());
    var trimname = Name.trim();
    this.userService.updateprojecttypebyid(ID,trimname).subscribe((data)=>{
    this.updateprojecttypebyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    setTimeout(function(){
      window.location.reload();
   },1000);
  }
  getprojectbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getprojectbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.projectbyIdAsobjects = data.result;
     
    });
    
  }
  updateprojectbyid(ID,Name){
    var trimname = Name.trim();

    this.userService.updateprojectbyid(ID,trimname).subscribe((data)=>{
    this.updateprojectbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getphasesbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService. getphasesbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.phasesbyIdAsobjects = data.result;
     
    });
    
  }
  updatephasesbyid(ID,Name){
    var trimname = Name.trim();
    
    this.userService.updatephasesbyid(ID,trimname).subscribe((data)=>{
    this.updatephasesbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getmilestonesbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getmilestonesbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.milestonesbyIdAsobjects = data.result;
     
    });
    
  }
  updatemilestonesbyid(ID,Name){
    var trimname = Name.trim();
    
    this.userService.updatemilestonesbyid(ID,trimname).subscribe((data)=>{
    this.updatemilestonesbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }

  getlifecyclebyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getlifecyclebyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.lifecyclebyIdAsobjects = data.result;
     
    });
    
  }
  updatelifecyclebyid(ID,Name){
    var trimname = Name.trim();
    
    this.userService.updatelifecyclebyid(ID,trimname).subscribe((data)=>{
    this.updatelifecyclebyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getfunctionsbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getfunctionsbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.functionsbyIdAsobjects = data.result;
     
    });
  
  }
  updatefunctionsbyid(ID,Name){
    var trimname = Name.trim();
    
    this.userService.updatefunctionsbyid(ID,trimname).subscribe((data)=>{
    this.updatefunctionsbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getdepartmentsbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getdepartmentsbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.departmentsbyIdAsobjects = data.result;
     
    });
  
  }
  updatedepartmentsbyid(ID,Name){
    var trimname = Name.trim();
    
    this.userService.updatedepartmentsbyid(ID,trimname).subscribe((data)=>{
    this.updatedepartmentsbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getimpactcategorybyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getimpactcategorybyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.impactcategorybyIdAsobjects = data.result;
     
    });
  
  }
  updateimpactcategorybyid(ID,Name){
    var trimname = Name.trim();
    
    this.userService.updateimpactcategorybyid(ID,trimname).subscribe((data)=>{
    this.updateimpactcategorybyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getimpactlevelbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getimpactlevelbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.impactlevelbyIdAsobjects = data.result;
     
    });
  
  }
  updateimpactlevelbyid(ID,Name){
    // debugger;
    var trimname = Name.trim();

    this.userService.updateimpactlevelbyid(ID,trimname).subscribe((data)=>{
    this.updateimpactlevelbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  getprocessbyid(ID) {
    // this.router.navigate(['/user/edit-lesson/' + ID]);
    console.log("clicked here for id",ID);
    this.userService.getprocessbyid(ID).subscribe((data) => {
      console.log(data)
      this.editData = data.result[0];
      this.projectForm.controls['title'].setValue(this.editData.Name);
      this.projectForm.controls['submitid'].setValue(this.editData.ID);
    this.getprocessbyidbyIdAsobjects = data.result;
     
    });
  
  }
  updateprocessbyid(ID,Name){
    // debugger;
    var trimname = Name.trim();

    this.userService.updateprocessbyid(ID,trimname).subscribe((data)=>{
    this.updateprocessbyIdAsobjects =data.result;
    });
   console.log(ID,Name);
    //  this. getidinurl(ID);
    window.location.reload();
  }
  

   myFunction() {
    if (confirm('Are you sure you want to submit')) {
      
    } else {
        return false;
    }
}
}