import { Component, OnInit, ViewChild } from '@angular/core';
import { FormBuilder, FormGroup, NgForm, Validators } from '@angular/forms';
import { Title } from '@angular/platform-browser';
import { ActivatedRoute, Router } from '@angular/router';
import { ModalDirective } from 'ngx-bootstrap/modal';
import { TagInputModule } from 'ngx-chips';
import { UserService } from '../../../_services/user.service';
import { IDropdownSettings } from 'ng-multiselect-dropdown';
@Component({
  selector: 'app-add-process',
  templateUrl: './add-process.component.html',
  styleUrls: ['./add-process.component.scss']
})
export class AddProcessComponent implements OnInit {
  @ViewChild('myModal', { static: false }) public myModal: ModalDirective;

  public projectsAsObjects: any;
  public projectsAsType: any;
  public projectsPhaseAsObjects: any;
  public projectsPhaseMilestoneAsObjects: any;
  public keywordsAsObjects: any;
  public categoriesAsObjects: any;
  public milestonesAsObjects: any;
  public phaseAsObjects: any;
  public impactlevelAsObjects: any;
  public lifecycleAsObjects: any;
  private keywordData: string[] = [];
  public mappingProjectAndMilestone: any;
  public MappingProjectTypeAndPhase: any;
  public mappingProjectTypeAndProject: any;
  public projectItems: any;
  public projectTab: boolean = true;
  public lessonTab: boolean = false;
  public additionalTab: boolean = false;
  public projectdTab: boolean = false;
  public lessondTab: boolean = true;
  public additionaldTab: boolean = true;
  public departmentAsObjects: any;
  public functionAsObjects: any;

  lessonFormbtn: boolean = false;
  additionalFormbtn: boolean = false;
  showIssues: boolean = true;
  showPractice: boolean = false;
  projectNameValue: string;
  projectPhaseValue: string;
  projectName: string;
  projectNumber: string;
  projectPahse: string;
  projectPahseMilestone: string;
  _projectName: string;
  _projectType: string;
  _projectPhase: string;
  typeoflesson: string;
  issuedescription: string;
  title: string;
  rootcause: string;
  Recommendation: string;
  _Keywords: any[] = [];
  deletelesson: any;
  impectcategory: string = '';
  impectlevel: string = '';
  isupdate: boolean = false;
  // lessonForm: FormGroup;
  lessonProcessForm: FormGroup;
  isSubmitted = false;
  errForms: boolean = false;
  uploadedFiles: Array<File>;
  // isProject: boolean = true;
  isProcess: boolean = true;
  projectNumberDisabled: boolean;
  lf: string;
  results: any[];
  lifecycle: string = '';
  lessonID: number;
  _projectname: String;
  URLlessonID: number;
  _projectphasemilestone: string;
  attachmentFiles;
  attachmentID: number;
  showLoader: boolean = false;
  processAsObjects: any;
  public dropdownSettings: IDropdownSettings = {};
  public lessontypeAsObjects: any;


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

    this.getcategories();
    this.getKeywords();
    this.getimpactlevel();
    this.getProjecttype();
    this.getdepartments();
    this.getfunctions();
    this.getProcess();
    this.getlessontype();
    this.getlifecycle();
    this.titleService.setTitle("Lighthouse | Add Process");
  }

  ngOnInit() {

    this.lessonProcessForm = this.formBuilder.group({
      process: ['', Validators.required],
      impectlevel: ['', Validators.required],
      impectcategory: ['', Validators.required],
      lifecycle: ['', Validators.required],
      _Keywords: ['', Validators.required],
      Recommendation: ['', Validators.required],
      rootcause: ['', Validators.required],
      issuedescription: ['', [Validators.required, Validators.maxLength(250)]],
      title: ['', Validators.required],
      typeoflesson: ['', Validators.required],
      department: ['', Validators.required],
      function: ['', Validators.required],
      attachments: null
    })
    this.dropdownSettings = {
      singleSelection: true,
      idField: 'ID',
      textField: 'Name',
      itemsShowLimit: 1,
      enableCheckAll: false,
      allowSearchFilter: true,
      closeDropDownOnSelection:true
    };


    this.lf = 'Process';
    this.typeoflesson ="";

  }

  // get formControls() { return this.lessonForm.controls; }
  get processFormControls() { return this.lessonProcessForm.controls; }
  reloadaction() {
    window.location.reload();
  }
    // for issue or best practice
  getlessontype(){
    console.log('data');
    this.userService.getlessontype().subscribe((data) => {
      
      this.lessontypeAsObjects = data.result;

    });
  }

  AddStatusFilter(e) {
    let target = e.target;
    let selectedIndex = target.selectedIndex;
    let targetid = target.options[selectedIndex].id;
    this.projectNameValue = target.value;
    if (targetid) {
      this.projectNumber = targetid;
    } else {

      this.projectNumber = "";
    }
  }
  addIgnoreColumn(column: any) {
    this._Keywords.push(<any>column);
    console.log(column);
  }
  // used to navigate if user select project or process
  togglelessonFlow(e, lf) {

    let target = e.target;
    let value = target.value;
    if (lf == 'project') {
      this.router.navigate(['/user/add-project']);

    } else if (lf == 'Process') {
      //console.log(LessonFlow);
      this.router.navigate(['/user/add-process']);

    }

  }

  onFileChangeProcess(event) {

    if (event.target.files && event.target.files.length > 0) {
      let file = event.target.files[0];
      this.attachmentFiles = file;
      this.lessonProcessForm.get('attachments').setValue({
        filename: Date.now() + '_' + file.name,
        filetype: file.type,
        value: file
      })
    }
  }

  getProcess() {
    this.userService.getProcess().subscribe((data) => {
      if (data.status) {
        this.processAsObjects = data.result;
      }
    });
  }
  getProjecttype() {
    this.userService.getProjecttype().subscribe((data) => {
      if (data.status) {
        this.projectsAsType = data.result;

      }
    });

  }
  getcategories() {
    this.userService.getcategories().subscribe((data) => {

      this.categoriesAsObjects = data.result;

    });
  }

  getKeywords() {
    this.userService.getKeywords().subscribe((data) => {
      if (data.status) {
        this.keywordsAsObjects = data.result;
      }
    });
  }
  getimpactlevel() {
    this.userService.getimpactlevel().subscribe((data) => {
      // console.log(data);     
      this.impactlevelAsObjects = data.result;

    });
  }
  getlifecycle() {
    this.userService.getlifecycle().subscribe((data) => {
      this.lifecycleAsObjects = data.result;
    });
  }

  public onselectProjecttype(e) {
    //console.log(e.target.value);
    this._projectName = '';
    this.projectNumber = '';
    this.projectsPhaseAsObjects = [];
    this.mappingProjectAndMilestone = [];
    this.projectFormFields();
  }

  public onselectProject(tag) {
    let lpn = tag.LPN
    if (lpn) {
      this.projectNumber = lpn;

    } else {
      this.projectNumber = "";
    }
  }

  onselectKeywords(tag) {
    //  console.log('gshsg',tag)
    this.keywordData.push(tag.keywordName);
    this.lessonFormFields();
  }
  onKeywordsRemoved(column: any) {
    const index: number = this._Keywords.indexOf(<any>column);
    if (index !== -1) {
      this._Keywords.splice(index, 1);
    }
    //this.lessonFormFields();
  }

  public onProjectRemoved(tag) {
    this.projectNumber = '';
    this.projectName = '';
    this.projectsPhaseAsObjects = [];
    this.mappingProjectAndMilestone = [];
    //this.projectFormFields();
  }

  public onselectProjectPhase(event) {
    //const confirm = window.confirm('Do you really want to add this tag?');    
    let selectedOptions = event.target['options'];
    let selectedIndex = selectedOptions.selectedIndex;
    let selectElementText = selectedOptions[selectedIndex].text;
    this.projectPahse = selectElementText;
    this.getProjectPhaseMilestone(event.target.value);
    this.projectFormFields();
  }

  public onProjectPhaseRemoved(tag) {
    this.projectPahse = '';
    this.projectFormFields();
  }

  public onselectMilestone(event) {
    //const confirm = window.confirm('Do you really want to add this tag?');    
    let selectedOptions = event.target['options'];
    let selectedIndex = selectedOptions.selectedIndex;
    let selectElementText = selectedOptions[selectedIndex].text;
    this.projectPahseMilestone = selectElementText;
    this.projectFormFields();
  }

  public onMilestonRemoved(tag) {
    this.projectPahseMilestone = '';
    this.projectFormFields();
  }

  public getProjectPhaseMilestone(id) {
    let phaseId = id ? id : 0;
    this.userService.getProjectPhaseMilestone(phaseId).subscribe((data) => {
      if (data.status) {
        this.projectsPhaseMilestoneAsObjects = data.result;
      }
    });
  }

  getdepartments() {
    this.userService.getdepartments().subscribe((data) => {
      console.log(data);
      this.departmentAsObjects = data.result;

    });
  }
  getfunctions() {
    this.userService.getfunctions().subscribe((data) => {
      console.log(data);
      this.functionAsObjects = data.result;

    });
  }

  public tabChange(index) {
    this.projectTab = false;
    this.lessonTab = false;
    this.additionalTab = false;

    this.projectdTab = true;
    this.lessondTab = true;
    this.additionaldTab = true;

    if (index == 1) {
      this.projectTab = true;
      this.projectdTab = false;
    }
    if (index == 2) {
      this.lessonTab = true;
      this.lessondTab = false;
    }
    if (index == 3) {
      this.additionalTab = true;
      this.additionaldTab = false;
    }

  }

  public projectFormFields() {
    //console.log(this.projectName , this.projectNumber , this.projectPahse , this.projectPahseMilestone);     
    if (this.projectName && this.projectNumber && this.projectPahse && this.projectPahseMilestone) {
      this.lessonFormbtn = false;
    } else {
      this.lessonFormbtn = false;
    }
  }

  public lessonFormFields() {
    //console.log(this.typeoflesson , this.issuedescription , this.rootcause , this.Recommendation, this._Keywords);            
    if (this.typeoflesson && this.issuedescription && this.rootcause && this.Recommendation && this._Keywords.length > 0) {
      this.additionalFormbtn = false;
    } else {
      this.additionalFormbtn = false;
    }
  }

  public onselecttypeoflesson(event) {
    //  console.log(event.target.value)   
    if (event.target.value == 2) {
      this.showIssues = false;
      this.showPractice = true;
    } else {
      this.showIssues = true;
      this.showPractice = false;
    }
    this.lessonFormFields();
  }

  addLessonProcess(form: NgForm) {
    console.log(form.value);
    this.isSubmitted = true;
    let _user: any = JSON.parse(localStorage.getItem('currentUser'));
    let o: any = {
      UserID: _user.ID,
      LessonTypeID: 2,
      ProcessID: form.value.process,
      TypeID: form.value.typeoflesson,
      ImpactCategoryID: form.value.impectcategory,
      ImpactLevelID: form.value.impectlevel,
      LifeCycleID: form.value.lifecycle,
      Title: this.title,
      IssueDescription: this.issuedescription,
      RootCause: this.rootcause,
      keywords: this._Keywords,
      DepartmentID: form.value.department[0].ID,
      FunctionID: form.value.function[0].ID,
      Recommendation: this.Recommendation,
      CreatedBy: _user.ID,
      IsEnabled: 1
    };
    this.showLoader = true;
    if (this.attachmentFiles) {
      const formData = new FormData();
      formData.append('attachment', this.attachmentFiles);
      //this.uploadAttachment(formData);
      //console.log(this.attachmentID);
      this.userService.uploadFile(formData).subscribe((data) => {
        if (data.status) {
          this.attachmentID = data.data.insertId;
          this.userService.addLesson(o).subscribe((data) => {
            //  console.log(data);
            //  console.log(data.result[0].insertId);
            //  console.log(data.status);
            if (data.status) {
              this.userService.addMappingLessonAttachmentSQL(data.result[0].insertId, this.attachmentID).subscribe((data) => {
                if (data.status) {
                  this.showLoader = false;
                  console.log(data);
                  this.myModal.show();
                  this.router.navigate(['/']);
                }
              });
            }
          });
        }
      });
    } else {
      this.userService.addLesson(o).subscribe((data) => {
        //   console.log(data);
        //   console.log(data.status);
        if (data.status) {
          this.showLoader = false;
          this.myModal.show();
          this.router.navigate(['/user/add-process']);
        }
      });
    }

  }

}

