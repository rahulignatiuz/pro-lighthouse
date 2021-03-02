class User {

    // static getUserLoginSQL(Username, Password) {
    //     //let sql = `SELECT ID,UserProfileID,Email FROM roche_llms.userlogin WHERE UserName = "${Username}" and Password="${Password}" INNER JOIN roche_llms.roles (Id);`;
    //     let sql = `SELECT ul.ID,ul.UserName,ul.UserProfileID,ul.Email,userprofile.DisplayName,murl.roleid,r.Name FROM User ul 
    //     INNER JOIN userprofile  on ul.ID = userprofile.ID
    //     INNER JOIN MappingUserRole murl on ul.ID = murl.userid
    //     INNER JOIN Role r on murl.RoleID = r.ID
    //     WHERE ul.UserName = "${Username}" and ul.Password="${Password}" ;`
    //     return sql;
    // }
    // get all lessons -> projects
    static getAllLessonProjectSQL() {
        let sql = `Call  getAllLessonProjectSQL()`;
        return sql;
    }
    // get all lessons -> Process
    static getAllLessonProcessSQL() {
        let sql = `Call  getAllLessonProcessSQL()`;
        return sql;
    }
    //delete lesson by lessonid
    static deletelessonsSQL(ID) {
        let sql = `Call  deletelessonsSQL(${ID})`;
        // let sql = `DELETE from lighthouse.lesson where ID=${ID}`;
        return sql;
    }
    static deleteAttachmnetSQL(ID) {
        let sql = `Call  deleteAttachmnetSQL(${ID})`;
        // let sql = `DELETE mla, att from lighthouse.mappinglessonattachment mla INNER JOIN lighthouse.attachment att  on mla.AttachmentID = att.ID where mla.LessonID=${ID}`;
        return sql;
    }
    // add lesson by both project and process
    static addLessonSQL(o) {
        if (o.ProcessID) {
            let sql = `Call  addProcessLessonSQL(${o.UserID},${o.LessonTypeID},${o.ProcessID},${o.TypeID},${o.ImpactCategoryID},${o.ImpactLevelID},${o.FunctionID},${o.LifeCycleID},${o.DepartmentID},'${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',${o.CreatedBy},${o.IsEnabled},@LID); select @LID as insertId;`;
            // let sql = `INSERT INTO lighthouse.lesson (UserID,LessonTypeID,ProcessID,TypeID,ImpactCategoryID,ImpactLevelID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES \
            // ('${o.UserID}','${o.LessonTypeID}','${o.ProcessID}','${o.TypeID}','${o.ImpactCategoryID}','${o.ImpactLevelID}','${o.FunctionID}','${o.LifeCycleID}','${o.DepartmentID}','${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}','${o.CreatedBy}',now(),'${o.IsEnabled}');`;
            return sql;
        } else if (o.ProjectID) {
            let sql = `Call  addProjectLessonSQL(${o.UserID},${o.LessonTypeID},${o.ProjectTypeID},${o.ProjectID},${o.PhaseID},${o.TypeID},${o.ImpactCategoryID},${o.ImpactLevelID},${o.MilestoneID},${o.FunctionID},${o.LifeCycleID},${o.DepartmentID},'${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',${o.CreatedBy},${o.IsEnabled},@LID); select @LID as insertId;`;
            // let sql = `INSERT INTO lighthouse.lesson (UserID,LessonTypeID,ProjectTypeID,ProjectID,PhaseID,TypeID,ImpactCategoryID,ImpactLevelID,MilestoneID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES \
            // ('${o.UserID}','${o.LessonTypeID}','${o.ProjectTypeID}','${o.ProjectID}','${o.PhaseID}','${o.TypeID}','${o.ImpactCategoryID}','${o.ImpactLevelID}','${o.MilestoneID}','${o.FunctionID}','${o.LifeCycleID}','${o.DepartmentID}','${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}','${o.CreatedBy}',now(),'${o.IsEnabled}');`;
            return sql;
        }
        return sql;
    }
    static addLessonSQLBulk(o) {
        let sql = `Call  addLessonSQLBulk('${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',${o.IsEnabled},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.lesson (Title,IssueDescription,RootCause,Recommendation,CreatedDate,IsEnabled) VALUES \
        //     ('${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',now(),'${o.IsEnabled}');`;
        return sql;
    }
    static updateLessonBybulk(lessonID, o) {
        if (o.ProjectID) {
           // console.log(o.ProjectID, "o.ProjectID");
            let sql = `Call  updateProjectLessonBybulk(${o.UserID},${o.LessonTypeID},${o.LifeCycleID},${o.ProjectTypeID},${o.TypeID},${o.ProjectID},${o.PhaseID},${o.ImpactCategoryID},${o.ImpactLevelID},${o.MilestoneID},${o.FunctionID},${o.DepartmentID},${o.CreatedBy},${lessonID})`;
            // let sql = `update lighthouse.lesson SET UserID='${o.UserID}', LessonTypeID='${o.LessonTypeID}',LifeCycleID='${o.LifeCycleID}',ProjectTypeID='${o.ProjectTypeID}',TypeID='${o.TypeID}',ProjectID='${o.ProjectID}',PhaseID='${o.PhaseID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',MilestoneID='${o.MilestoneID}',FunctionID='${o.FunctionID}' ,DepartmentID='${o.DepartmentID}', CreatedBy='${o.CreatedBy}' where ID='${lessonID}'`;
            return sql;
        } else if (o.ProcessID) {
          //  console.log(o.ProcessID, "o.ProcessID");
            let sql = `Call  updateProcessLessonBybulk(${o.UserID},${o.LessonTypeID},${o.LifeCycleID},${o.ProcessID},${o.TypeID},${o.ImpactCategoryID},${o.ImpactLevelID},${o.FunctionID},${o.DepartmentID},${o.CreatedBy},${lessonID})`;
            // let sql = `update lighthouse.lesson SET UserID='${o.UserID}', LessonTypeID='${o.LessonTypeID}',LifeCycleID='${o.LifeCycleID}',ProcessID='${o.ProcessID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',FunctionID='${o.FunctionID}',DepartmentID='${o.DepartmentID}', CreatedBy='${o.CreatedBy}' where ID='${lessonID}'`;
            return sql;
        }
    }
    // get department data
    static getAllDepartmentsSQL() {
        let sql = `call getAllDepartmentsSQL()`;
        // let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.department order by Indexing ASC `;
        return sql;
    }
    // add department
    static AddAllDepartmentsSQL(obj) {
        let sql = `Call  addAllDepartmentsSQL( '${obj.Name}','${obj.Description}','${obj.CreatedBy}','${obj.UpdatedBy}',@LID); select @LID as insertId;`;
        //     let sql = `INSERT INTO  lighthouse.department(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${obj.Name}','${obj.Description}','${obj.CreatedBy}','${obj.UpdatedBy}')`;

        return sql;

    }
    // get all data of process
    static getAllProcessSQL() {
        let sql = `call getAllProcessSQL()`;
        // let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.process order by Indexing ASC`;
        return sql;
    }
    // used to map keyword with lesson id
    static Mappingkeywordlesson(obj) {
        let sql = `Call  mappingKeywordLesson(${obj.LessonID},${obj.KeywordID},@LID); select @LID as insertId;`;
        //     let sql = `INSERT INTO lighthouse.mappinglessonkeyword(LessonID,KeywordID) \
        // VALUES( '${obj.LessonID}','${obj.KeywordID}')`;
        return sql;
    }
    // to get project data
    static getAllProjectsSQL(projectTypeId) {
       // console.log(projectTypeId);
        let sql = `call getAllProjectsSQL()`;
        //let sql = `SELECT ID,Name,LPN,Description,Indexing FROM lighthouse.project order by Indexing ASC`;
        //let sql =`SELECT lighthouse.project.ID, lighthouse.project.Name, lighthouse.project.LPN, lighthouse.project.Description FROM lighthouse.project INNER JOIN lighthouse.mappingprojectprojecttype ON lighthouse.project.ID = lighthouse.mappingprojectprojecttype.ProjectID where lighthouse.mappingprojectprojecttype.ProjecttypeID = "${projectTypeId}"  order by Name ASC`;
        return sql;
    }
    // used to get projecte data according to project type 
    static getAllMappingprojectprojectypeSQL(ProjecttypeID) {
        let sql = `call getAllMappingprojectprojectypeSQL(${ProjecttypeID})`;
        //     let sql = `SELECT pr.ID,map.projectID,pr.Name,pr.LPN,map.Indexing
        // FROM  mappingprojectprojecttype map
        // INNER JOIN project  pr on pr.ID = map.ProjectID
        // INNER JOIN projecttype pro on pro.ID =map.ProjecttypeID where ProjecttypeID='${ProjecttypeID}'order by Indexing ASC `;
        return sql;
    }
    //used to get projectphase data according to project type
    static getAllMappingprojectphaseSQL(ProjecttypeID) {
        let sql = `call getAllMappingprojectphaseSQL(${ProjecttypeID})`;
        //     let sql = `SELECT ph.ID,map.phaseID,ph.Name,map.Indexing,map.ID as mid,pr.Name as projecttype
        // FROM  mappingprojectphase map
        // INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
        // INNER JOIN phase ph on ph.ID =map.PhaseID where ProjecttypeID='${ProjecttypeID}'order by Indexing ASC `;
        return sql;
    }

    static getAllMappingprojectmilestonesSQL(ProjectID) {
        let sql = `call getAllMappingprojectmilestonesSQL(${ProjectID})`;
        //     let sql = `SELECT mil.ID, map.ProjectID,map.MilestoneID,mil.Name
        // FROM  mappingprojectmilestone map
        // INNER JOIN project pr on pr.ID = map.ProjectID
        // INNER JOIN milestone mil on mil.ID =map.MilestoneID where projectID='${ProjectID}'`;
        return sql;
    }
    // used to get all keywords data
    static getAllKeywordsSQL() {
        let sql = `call getAllKeywordsSQL()`;
        //  let sql = `SELECT ID,Name,Description FROM lighthouse.keyword order by ID DESC`;
        //let sql = `SELECT ID,Name,Description FROM lighthouse.keyword order by Name ASC`;
        return sql;
    }
    // used to get all milestones data
    static getAllMilestonesSQL() {
        let sql = `call getAllMilestonesSQL()`;
        // let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.milestone order by Indexing ASC`;
        return sql;
    }
    // used to get all impactcategory data
    static getAllimpactcategorySQL() {
        let sql = `call getAllimpactcategorySQL()`;
        // let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.impactcategory order by Indexing ASC`;
        return sql;
    }
    // used to get all phase data
    static getAllphaseSQL() {
        let sql = `call getAllphaseSQL()`;
        //  let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.phase order by Indexing ASC`;
        return sql;
    }
    // used to get all impactlevel data
    static getAllimpactlevelSQL() {
        let sql = `call getAllimpactlevelSQL()`;
        //  let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.impactlevel order by Indexing ASC`;
        return sql;
    }
    // used to get all Projecttype data
    static getAllProjecttypeSQL() {
        let sql = `call getAllProjecttypeSQL()`;
        //let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.projecttype order by Indexing ASC`;
        return sql;
    }
    // used to update the lpn no 
    static updateProjectsSQL(p) {
        let sql = `call updateProjectsSQL('${p.LPN}',${p.ID})`;
        // let sql = `update lighthouse.project SET LPN='${p.LPN}' where ID='${p.ID}'`;
        return sql;
    }
    // used to update the lesson -> project and process 
    static updatelessonSQL(o) {
        if (o.ProjectID) {
            //console.log(o.ProjectID, "o.ProjectID");
            let sql = `call updateProjectlessonSQL(${o.UserID},${o.LessonTypeID},${o.ProjectTypeID},${o.ProjectID},${o.PhaseID},${o.TypeID},${o.ImpactCategoryID},${o.ImpactLevelID},${o.MilestoneID},${o.FunctionID},${o.LifeCycleID},${o.DepartmentID},'${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',${o.UpdatedBy},${o.ID})`;
            // let sql = `update lighthouse.lesson SET UserID='${o.UserID}',LessonTypeID='${o.LessonTypeID}',ProjectTypeID='${o.ProjectTypeID}',ProjectID='${o.ProjectID}',PhaseID='${o.PhaseID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',MilestoneID='${o.MilestoneID}',FunctionID='${o.FunctionID}',LifeCycleID='${o.LifeCycleID}',DepartmentID='${o.DepartmentID}',Title='${o.Title}',IssueDescription='${o.IssueDescription}',RootCause='${o.RootCause}',Recommendation='${o.Recommendation}',UpdatedBy='${o.UpdatedBy}',UpdatedDate=now()where ID='${o.ID}'`;
            return sql;
        } else if (o.ProcessID) {
            // console.log(o.ProcessID, "o.ProcessID");
            let sql = `call updateProcesslessonSQL(${o.UserID},${o.LessonTypeID},${o.ProcessID},${o.TypeID},${o.ImpactCategoryID},${o.ImpactLevelID},${o.FunctionID},${o.LifeCycleID},${o.DepartmentID},'${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',${o.UpdatedBy},${o.ID})`;
            //let sql = `update lighthouse.lesson SET UserID='${o.UserID}',LessonTypeID='${o.LessonTypeID}',ProcessID='${o.ProcessID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',FunctionID='${o.FunctionID}',LifeCycleID='${o.LifeCycleID}',DepartmentID='${o.DepartmentID}',Title='${o.Title}',IssueDescription='${o.IssueDescription}',RootCause='${o.RootCause}',Recommendation='${o.Recommendation}',UpdatedBy='${o.UpdatedBy}',UpdatedDate=now()where ID='${o.ID}'`;
            return sql;
        }
        //  else {
        //   //  console.log(o.ProjectTypeID, "oTHER");
        //     let sql = `update lighthouse.lesson SET UserID='${o.UserID}',LessonTypeID='${o.LessonTypeID}',ProjectTypeID='${o.ProjectTypeID}',ProjectID='${o.ProjectID}',ProcessID='${o.ProcessID}',PhaseID='${o.PhaseID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',MilestoneID='${o.MilestoneID}',FunctionID='${o.FunctionID}',LifeCycleID='${o.LifeCycleID}',DepartmentID='${o.DepartmentID}',Title='${o.Title}',IssueDescription='${o.IssueDescription}',RootCause='${o.RootCause}',Recommendation='${o.Recommendation}',UpdatedBy='${o.UpdatedBy}',UpdatedDate=now()where ID='${o.ID}'`;
        //     return sql;
        // }
        return sql;
    }
    // used to get milestones data according to project type
    static getAllMappingprojecttypemilestonesSQL(ProjecttypeID) {
        let sql = `call getAllMappingprojecttypemilestonesSQL(${ProjecttypeID})`;
        //     let sql = `SELECT mil.ID,map.MilestoneID,mil.Name,map.Indexing,map.ID as mid
        // FROM  mappingprojecttypemilestones map
        // INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
        // INNER JOIN milestone mil on mil.ID = map.MilestoneID where ProjecttypeID='${ProjecttypeID}' order by Indexing ASC`;
        return sql;
    }
    // used to get lessonProject data by lesson id
    static getlessonProject(ID) {
        let sql = `call getlessonProject(${ID})`;
        // let sql = `select COUNT(ul.Likes) as likes,pro.Name as projecttype,pro.ID as projecttypeID, les.Recommendation,lf.ID as lifecycleID,lf.Name as lifecycle,
        // les.RootCause,les.ProcessID,les.Title,les.IssueDescription,les.CreatedDate,les.UserID ,lt.Name as lessontypeName,pr.ID as projectID,pr.LPN,pr.Name as projectname,us.Email as Email,p.Name as phase,p.ID as phaseID,
        // im.Name as impactlevel,im.ID as impactlevelID,mil.Name as milestones,mil.ID as milestonesID,imp.Name as impactcategory,imp.ID as impactcategoryID,les.ID as LessonID,t.Name as Type,t.ID as TypeID,f.Name as functions,f.ID as functionID,d.Name as department,d.ID as departmentID,usles.Description as useruseful
        // from lesson les
        // Inner join lessontype lt on lt.ID =les.LessonTypeID
        // Inner join project pr on pr.ID =les.ProjectID
        // Inner join projecttype pro on pro.ID =les.ProjectTypeID
        // Inner join user us on us.ID = les.UserID
        // Inner join phase p on p.ID =les.PhaseID
        // Inner join impactlevel im on im.ID =les.ImpactLevelID
        // Inner join milestone mil on mil.ID = les.MilestoneID
        // inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        // Inner join type t on t.ID =les.TypeID
        // Inner join department d on d.ID =les.DepartmentID
        // Inner Join functions f on f.ID =les.FunctionID
        // Inner join lifecycle lf on lf.ID = les.LifeCycleID
        // left join userusefullesson usles on usles.LessonID=les.ID
        // left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=1 and les.ID=${ID};`
        return sql;
    }
    // used to get lessonProcess data by lesson id
    static getlessonProcess(ID) {
        let sql = `call getlessonProcess(${ID})`;
        // let sql = `select COUNT(ul.Likes) as likes, les.Recommendation,lt.Name as lessontypeName,lf.ID as lifecycleID,lf.Name as lifecycle,
        // les.RootCause,les.ProcessID,les.Title,les.IssueDescription,les.CreatedDate,les.UserID ,us.Email as Email,
        // im.Name as impactlevel,im.ID as impactlevelID,imp.Name as impactcategory,imp.ID as impactcategoryID,les.ID as LessonID,t.Name as Type,t.ID as TypeID,f.Name as functions,f.ID as functionID,d.Name as department,d.ID as departmentID, proc.ID as processID, proc.Name as Name,usles.Description as useruseful
        // from lesson les
        // Inner join lessontype lt on lt.ID =les.LessonTypeID
        // Inner join user us on us.ID = les.UserID
        // Inner join impactlevel im on im.ID =les.ImpactLevelID
        // inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        // Inner join type t on t.ID =les.TypeID
        // Inner join department d on d.ID =les.DepartmentID
        // Inner Join functions f on f.ID =les.FunctionID
        // Inner Join process proc on proc.ID =les.ProcessID
        // Inner join lifecycle lf on lf.ID = les.LifeCycleID
        // left join userusefullesson usles on usles.LessonID=les.ID
        // left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=2 and les.ID=${ID};`
        return sql;
    }
    static getLessonAttachmentSQL(LessonID) {
        let sql = `call getLessonAttachmentSQL(${LessonID})`;

        //     let sql = `SELECT att.OriginalName,att.Url
        // FROM  lighthouse.mappinglessonattachment mla
        // INNER JOIN attachment att on mla.AttachmentID = att.ID where mla.LessonID='${LessonID}'`;
        return sql;
    }
    // used to filter lesson project data
    static FilterAllLessonssSQL(d) {
        let ProjecttypeID = d.ProjecttypeID;
        let ProjectID = d.ProjectID;
        let PhaseIDList = d.PhaseIDList;
        let flag = d.flag;
        let TypeID = d.LessontypeID;
        let SortBy = d.SortBy;
        let KeywordsIDList = d.KeywordsIDList;
        let FunctionIDList = d.FunctionIDList;
        let DepartmenIDList = d.DepartmenIDList;
        let LifecycleIDList = d.LifecycleIDList;
        let ImpectCategoryIDList = d.ImpectCategoryIDList;
        let ImpectLevelsIDList = d.ImpectLevelsIDList;
        let LessonsID = d.LessonsID;
        let PhaseIDListArray = [];
        for (const type of PhaseIDList) {
            // console.log(type.ID)
            PhaseIDListArray.push(type.ID)
        }
        // console.log("FilterAllLessonssSQL", PhaseIDListArray);
        let MilestoneIDList = d.MilestoneIDList;
        let MilestoneIDListArray = [];
        for (const type of MilestoneIDList) {
            console.log(type.ID)
            MilestoneIDListArray.push(type.ID)
        }
        let KeywordsIDListArray = [];
        for (const type of KeywordsIDList) {
            // console.log(type.ID)
            KeywordsIDListArray.push(type.ID)
        }
        let FunctionIDListArray = [];
        for (const type of FunctionIDList) {
            // console.log(type.ID)
            FunctionIDListArray.push(type.ID)
        }
        let DepartmenIDListArray = [];
        for (const type of DepartmenIDList) {
            // console.log(type.ID)
            DepartmenIDListArray.push(type.ID)
        }
        let LifecycleIDListArray = [];
        for (const type of LifecycleIDList) {
            // console.log(type.ID)
            LifecycleIDListArray.push(type.ID)
        }
        let ImpectCategoryIDListArray = [];
        for (const type of ImpectCategoryIDList) {
            // console.log(type.ID)
            ImpectCategoryIDListArray.push(type.ID)
        }
        let ImpectLevelsIDListArray = [];
        for (const type of ImpectLevelsIDList) {
            // console.log(type.ID)
            ImpectLevelsIDListArray.push(type.ID)
        }
        //  console.log("FilterAllLessonssSQL", MilestoneIDListArray);
        let str = '';
        let strkey = '';
        let sortby = '';
        if (ProjecttypeID) str += " and ProjecttypeID=" + ProjecttypeID;
        if (ProjectID) str += " and ProjectID=" + ProjectID;
        if (flag) str += " and flag=" + flag;
        if (PhaseIDList) str += " and PhaseID IN (" + PhaseIDListArray + ")";
        if (MilestoneIDList) str += " and MilestoneID IN (" + MilestoneIDListArray + ")";
        if (KeywordsIDList) strkey += " where KeywordID IN (" + KeywordsIDListArray + ")";
        if (FunctionIDList) str += " and FunctionID IN (" + FunctionIDListArray + ")";
        if (DepartmenIDList) str += " and DepartmentID IN (" + DepartmenIDListArray + ")";
        if (LifecycleIDList) str += " and LifecycleID IN (" + LifecycleIDListArray + ")";
        if (ImpectCategoryIDList) str += " and ImpactcategoryID IN (" + ImpectCategoryIDListArray + ")";
        if (ImpectLevelsIDList) str += " and ImpactlevelID IN (" + ImpectLevelsIDListArray + ")";
        if (TypeID) str += " and TypeID=" + TypeID;
        if (SortBy == "DESC") {
            sortby += " CreatedDate DESC ";
        } else if (SortBy == "ASC") {
            sortby += " CreatedDate ASC ";
        } else if (SortBy == "likes") {
            sortby += " likes  DESC ";
        }
        if (LessonsID) {
           // console.log("================", LessonsID);
            str += " and les.ID IN (" + LessonsID + ")";
        }
        // if (Flag == "flag") {
        //     str += " and flag=" + flag;
        // } else if (lag == "flag1") {
        //     str += " and flag1=" + flag;
        // }
        // let sql = `call filterAllLessonssSQL('${strkey}',)`;
        let sql = `select COUNT(ul.Likes) as likes, les.Title, les.ID,pro.ID as projecttypeID,pro.Name as projecttype,les.Recommendation,f.Name as functions,
        les.RootCause,les.IssueDescription,lt.Name as lessontypeName,pr.LPN,pr.ID as projectID,pr.Name as Name,us.Email as Email,p.ID as PhaseID,p.Name as phase,im.ID as impactlevelID,
        im.Name as impactlevel,Imp.ID as ImpactcategoryID,mil.ID as milestoneID,mil.Name as milestone,imp.Name as impactcategory,les.CreatedDate,t.Name as Type,d.Name as department,lf.Name as lifecycle,usr.Description as useruseful
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join projecttype pro on pro.ID =les.ProjectTypeID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        Inner join type t on t.ID =les.TypeID
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        inner join (SELECT LessonID,KeywordID, COUNT(*) as CourseCount FROM lighthouse.mappinglessonkeyword  ${strkey}  group by LessonID) mlk ON mlk.LessonID = les.ID
        left join userusefullesson usr on usr.LessonID = les.ID
        left Join userlike ul on ul.lessonID = les.ID where  les.LessonTypeID=1 ${str} group by les.ID order by ${sortby}`
        return sql;
    }
    // used to filter lesson Process data
    static FilterAllLessonssProcessSQL(d) {
        let ProcessID = d.ProcessID;
        let TypeID = d.LessontypeID;
        let SortBy = d.SortBy;
        let flag = d.flag;
        let KeywordsIDList = d.KeywordsIDList;
        let FunctionIDList = d.FunctionIDList;
        let DepartmenIDList = d.DepartmenIDList;
        let LifecycleIDList = d.LifecycleIDList;
        let ImpectCategoryIDList = d.ImpectCategoryIDList;
        let ImpectLevelsIDList = d.ImpectLevelsIDList;
        let KeywordsIDListArray = [];
        let LessonsID = d.LessonsID;
        for (const type of KeywordsIDList) {
            // console.log(type.ID)
            KeywordsIDListArray.push(type.ID)
        }
        let FunctionIDListArray = [];
        for (const type of FunctionIDList) {
            // console.log(type.ID)
            FunctionIDListArray.push(type.ID)
        }
        let DepartmenIDListArray = [];
        for (const type of DepartmenIDList) {
            // console.log(type.ID)
            DepartmenIDListArray.push(type.ID)
        }
        let LifecycleIDListArray = [];
        for (const type of LifecycleIDList) {
            // console.log(type.ID)
            LifecycleIDListArray.push(type.ID)
        }
        let ImpectCategoryIDListArray = [];
        for (const type of ImpectCategoryIDList) {
            // console.log(type.ID)
            ImpectCategoryIDListArray.push(type.ID)
        }
        let ImpectLevelsIDListArray = [];
        for (const type of ImpectLevelsIDList) {
            // console.log(type.ID)
            ImpectLevelsIDListArray.push(type.ID)
        }
        let str = '';
        let strkey = '';
        let sortby = '';
        if (ProcessID) str += " and ProcessID=" + ProcessID;
        if (flag) str += " and flag=" + flag;
        if (KeywordsIDList) strkey += " where KeywordID IN (" + KeywordsIDListArray + ")";
        if (FunctionIDList) str += " and FunctionID IN (" + FunctionIDListArray + ")";
        if (DepartmenIDList) str += " and DepartmentID IN (" + DepartmenIDListArray + ")";
        if (LifecycleIDList) str += " and LifecycleID IN (" + LifecycleIDListArray + ")";
        if (ImpectCategoryIDList) str += " and ImpactcategoryID IN (" + ImpectCategoryIDListArray + ")";
        if (ImpectLevelsIDList) str += " and ImpactlevelID IN (" + ImpectLevelsIDListArray + ")";
        if (TypeID) str += " and TypeID=" + TypeID;
        if (SortBy == "DESC") {
            sortby += " CreatedDate DESC ";
        } else if (SortBy == "ASC") {
            sortby += " CreatedDate ASC ";
        } else if (SortBy == "likes") {
            sortby += " likes  DESC ";
        }
        if (LessonsID) {
            //console.log("================", LessonsID);
            str += " and les.ID IN (" + LessonsID + ")";
        }
        let sql = `select COUNT(ul.Likes) as likes, les.Title, les.ID,pro.ID as ProcessID,pro.Name as Name,les.Recommendation,
        les.RootCause,les.IssueDescription,lt.Name as lessontypeName,us.Email as Email,im.ID as impactlevelID,f.Name as functions,
        im.Name as impactlevel,Imp.ID as ImpactcategoryID,imp.Name as impactcategory,les.CreatedDate,t.Name as Type,d.Name as department,lf.Name as lifecycle,usr.Description as useruseful
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join process pro on pro.ID =les.ProcessID
        Inner join user us on us.ID = les.UserID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join type t on t.ID =les.TypeID
        Inner join department d on d.ID =les.DepartmentID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID 
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
        inner join (SELECT LessonID,KeywordID, COUNT(*) as CourseCount FROM lighthouse.mappinglessonkeyword  ${strkey}  group by LessonID) mlk ON mlk.LessonID = les.ID
        left join userusefullesson usr on usr.LessonID = les.ID
        left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=2 ${str} group by les.ID order by ${sortby}`
        return sql;
    }
    // used to get all Keywords data
    static AddAllKeywordsSQL(k) {
        let sql = `Call  addAllKeywordsSQL('${k.Name}','${k.Description}',${k.CreatedBy},${k.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.keyword(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${k.Name}','${k.Description}','${k.CreatedBy}','${k.UpdatedBy}')`;
        return sql;
    }
    // used to get all Project data by Project id
    static getProjectProject(obj) {
        let sql = `Call  getProjectProject(${obj.projectID})`;
        // let sql = `SELECT ID,Name,LPN,Description,IsEnabled FROM lighthouse.project where ID='${obj.projectID}' order by Name ASC`;
        return sql;
    }
    // used to get all userlikes data by LessonID 
    static getAlluserlikeSQL(LessonID) {
        let sql = `Call  getAlluserlikeSQL(${LessonID})`;
        // let sql = `SELECT COUNT('Likes') FROM lighthouse.userlike where LessonID='${LessonID}';`
        return sql;
    }
    // used to add userlikes data in table  
    static addAlluserlikeSQL(l) {
        let sql = `Call  addAlluserlikeSQL(${l.UserID},${l.LessonID},${l.Likes},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.userlike ( UserID,LessonID,Likes) \
        // VALUES( '${l.UserID}','${l.LessonID}','${l.Likes}')`;
        return sql;
    }
    // used to delete userlike data by ID 
    static deleteAlluserlikeSQL(ID) {
        let sql = `Call  deleteAlluserlikeSQL(${ID})`;
        // let sql = ` DELETE From lighthouse.userlike where ID=${ID}`;
        return sql;
    }
    // used to add Attachment data 
    static AddAllAttachmentSQL(obj) {
        let sql = `Call  addAllAttachmentSQL( '${obj.fieldname}','${obj.originalname}','${obj.mimetype}','${obj.container}','${obj.blob}','${obj.size}','${obj.url}',@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.attachment(FieldName,OriginalName,MimeType,Container,AzureBlob,FileSize,Url) \
        // VALUES( '${obj.fieldname}','${obj.originalname}','${obj.mimetype}','${obj.container}','${obj.blob}','${obj.size}','${obj.url}');`;
        return sql;
    }
    // used to add attactment data according to lessonID
    static AddMappingLessonAttachmentSQL(obj) {
        let sql = `Call  addMappingLessonAttachmentSQL( '${obj.lessonID}','${obj.attachmentID}',@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.mappinglessonattachment(LessonID,AttachmentID) \
        // VALUES( '${obj.lessonID}','${obj.attachmentID}');`;
        return sql;
    }
    static getfreesearchByFilterSQL(data) {
        let sql = `call getfreesearchByFilterSQL('${data}')`;
        // let sql = `select les.Title, les.ID,pro.ID as projecttypeID,pro.Name as projecttype,les.Recommendation,
        // les.RootCause,les.IssueDescription,lt.Name as lessontypeName,pr.LPN,pr.ID as projectID,pr.Name as ProjectName,us.Email as Email,p.ID as PhaseID,p.Name as phase,im.ID as impactlevelID,
        // im.Name as impactlevel,Imp.ID as ImpactcategoryID,mil.ID as milestoneID,mil.Name as milestone,imp.Name as impactcategory,les.CreatedDate,t.Name as Type
        // from lesson les
        // Inner join lessontype lt on lt.ID =les.LessonTypeID
        // Inner join project pr on pr.ID =les.ProjectID
        // Inner join projecttype pro on pro.ID =les.ProjectTypeID
        // Inner join user us on us.ID = les.UserID
        // Inner join phase p on p.ID =les.PhaseID
        // Inner join impactlevel im on im.ID =les.ImpactLevelID
        // Inner join milestone mil on mil.ID = les.MilestoneID
        // Inner join type t on t.ID =les.TypeID
        // inner join impactcategory imp on imp.ID =les.ImpactCategoryID where pro.Name='${data}' or  pr.Name='${data}' or p.Name='${data}' or im.Name='${data}' or imp.Name='${data}' or t.Name='${data}'`;
        return sql;
    }
    // used to get All Functions data 
    static getAllFunctionsSQL() {
        let sql = `call getAllFunctionsSQL()`;
        // let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.functions order by Indexing ASC `
        return sql;
    }
    // used to get All type of lesson data i.e issue or best practice
    static getalltypeoflessonSql() {
        let sql = `call getalltypeoflessonSql()`;
        // let sql = `SELECT ID,Name,Description FROM lighthouse.type`
        return sql;
    }
    // used to check the user likes by lessonid and userid 
    static checkAlluserlikeSQL(l) {
        // console.log(l);
        let sql = `call checkAlluserlikeSQL(${l.UserID},${l.LessonID})`;
        // let sql = `SELECT * FROM lighthouse.userlike where UserID='${l.UserID}' and LessonID='${l.LessonID}';`
        return sql;
    }
    // used to add keyword through mapping by lesson id and keywordid
    static addKeywordsByMappingLessonSQL(lessonID, keywordID) {
        let sql = `call addKeywordsByMappingLessonSQL(${lessonID},${keywordID},@LID); select @LID as insertId;`;
        // let sql = ` INSERT INTO lighthouse.mappinglessonkeyword ( LessonID,KeywordID) \
        // VALUES( '${lessonID}','${kaywordID}')`;
        return sql;
    }
    //used to add keywords data
    static addKeywordsBySQL(value) {
        let sql = `call addKeywordsBySQL('${value}',@LID); select @LID as insertId;`;
        // let sql = ` INSERT INTO lighthouse.keyword ( Name,Description) \
        // VALUES( '${value}','${value}')`;
        return sql;
    }
    // used to get all keywords data by lessonid
    static getAllKeywordsByID(ID) {
        let sql = `call getAllKeywordsByID(${ID})`;
        // let sql = `SELECT keywd.ID, keywd.Name
        // FROM lighthouse.mappinglessonkeyword mlk
        // INNER JOIN keyword keywd on mlk.KeywordID = keywd.ID where LessonID = ${ID};`
        return sql;
    }
    // used to dalete all keywords data in mapping table by lesson id
    static deleteAllKeywordsByID(ID) {
        let sql = `call deleteAllKeywordsByID(${ID})`;
        //   let sql = `DELETE FROM lighthouse.mappinglessonkeyword where LessonID = ${ID};`
        return sql;
    }
    // used to get data of user useful data i.e implemented or not implemented
    static getAllUserusefulllessonsSQL() {
        let sql = `call getAllUserusefulllessonsSQL()`;
        // let sql = `select ID,UserID,LessonID,Description,flag from lighthouse.userusefullesson`;
        return sql;
    }
    //used to get attachment data or file name by lesson id
    static getAttachmentNameByID(obj) {
        let sql = `Call  getAttachmentNameByID(${obj.LessonID})`;
        // let sql = `SELECT att.OriginalName, att.Url FROM lighthouse.attachment as att Inner join mappinglessonattachment mla on mla.AttachmentID = att.ID where mla.LessonID = ${obj.LessonID};`
        return sql;
    }
    // used to add data in useruseful table (implemented or not implemented)
    static AddUserusefullessonsSQL(l) {
        let sql = `Call  addUserusefullessonsSQL(${l.UserID},${l.LessonID},'${l.Description}',${l.flag},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.userusefullesson(UserID,LessonID,Description,flag) \
        // VALUES( '${l.UserID}','${l.LessonID}','${l.Description}','${l.flag}')`;
        return sql;
    }
    // used to get total count of impact level (for dashboard)
    static getCountimpactlevelSQL(id) {
        let sql = `Call  getCountimpactlevelSQL(${id})`;
        // let sql = `SELECT COUNT( lesson.ImpactLevelID ) as "TotalNumber" FROM lighthouse.lesson WHERE lesson.ImpactLevelID=${id};`;
        return sql;
    }
    // used to get total count of flag (for dashboard)
    static getallcountuserusefulSQL(id) {
        let sql = `Call  getallcountuserusefulSQL(${id})`;
        // let sql = `select count(userusefullesson.flag) as total, (select count(ID) from lesson)as totallesson from userusefullesson WHERE userusefullesson.flag=${id}`;
        return sql;
    }
    static getuserusefulByUserPieChartSQL(id) {
        let sql = `Call  getuserusefulByUserPieChartSQL(${id})`;
        // let sql = `SELECT COUNT( userusefullesson.flag ) as "TotalNumber" FROM lighthouse.userusefullesson WHERE userusefullesson.flag=${id}`;
        return sql;
    }
    // used to add project data in project table 
    static AddAllProjectsSQL(p) {
        let sql = `Call  addAllProjectsSQL('${p.Name}','${p.LPN}','${p.Description}',${p.CreatedBy},${p.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.project(Name,LPN,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${p.Name}','${p.LPN}','${p.Description}','${p.CreatedBy}','${p.UpdatedBy}')`;
        return sql;

    }
    static getAllLifecycleSQL() {
        let sql = `call getAllLifecycleSQL()`;
        // let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.lifecycle order by Indexing ASC`;
        return sql;
    }
    static AddAllProjecttypeSQL(p) {
        let sql = `Call  addAllProjecttypeSQL('${p.Name}','${p.Description}',${p.CreatedBy},${p.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.projecttype(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${p.Name}','${p.Description}','${p.CreatedBy}','${p.UpdatedBy}')`;
        return sql;
    }
    static AddAllmappingprojectprojecttypeSQL(p) {
        let sql = `Call  addAllmappingprojectprojecttypeSQL(${p.ProjectID},${p.ProjecttypeID},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.mappingprojectprojecttype(ProjectID,ProjecttypeID) \
        // VALUES( '${p.ProjectID}','${p.ProjecttypeID}')`;
        return sql;
    }
    static AddAllmappingprojectypephaseSQL(p) {
        let sql = `Call  addAllmappingprojectypephaseSQL(${p.ProjecttypeID},${p.PhaseID},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.mappingprojectphase(ProjecttypeID,PhaseID) \
        // VALUES( '${p.ProjecttypeID}','${p.PhaseID}')`;
        return sql;
    }
    static AddAllmilestoneSQL(m) {
        let sql = `Call  addAllmilestoneSQL('${m.Name}','${m.Description}',${m.CreatedBy},${m.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.milestone(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${m.Name}','${m.Description}','${m.CreatedBy}','${m.UpdatedBy}')`;
        return sql;
    }
    static AddAllmappingprojecttypemilstonesSQL(p) {
        let sql = `Call  addAllmappingprojecttypemilstonesSQL(${p.ProjecttypeID},${p.MilestoneID},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.mappingprojecttypemilestones(ProjecttypeID,MilestoneID) \
        // VALUES( '${p.ProjecttypeID}','${p.MilestoneID}')`;
        return sql;
    }
    static AddAllphasesSQL(p) {
        let sql = `Call  addAllphasesSQL('${p.Name}','${p.Description}',${p.CreatedBy},${p.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.phase(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${p.Name}','${p.Description}','${p.CreatedBy}','${p.UpdatedBy}')`;
        return sql;
    }
    static AddAllfunctionsSQL(f) {
        let sql = `Call  addAllfunctionsSQL('${f.Name}','${f.Description}',${f.CreatedBy},${f.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.functions(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${f.Name}','${f.Description}','${f.CreatedBy}','${f.UpdatedBy}')`;
        return sql;
    }
    static AddAlllifecycleSQL(m) {
        let sql = `Call  addAlllifecycleSQL('${m.Name}','${m.Description}',${m.CreatedBy},${m.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.lifecycle(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${m.Name}','${m.Description}','${m.CreatedBy}','${m.UpdatedBy}')`;
        return sql;
    }
    static AddAllimpactcategorySQL(i) {
        let sql = `Call  addAllimpactcategorySQL('${i.Name}','${i.Description}',${i.CreatedBy},${i.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.impactcategory(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${i.Name}','${i.Description}','${i.CreatedBy}','${i.UpdatedBy}')`;
        return sql;
    }
    static AddAllimpactlevelSQL(i) {
        let sql = `Call  addAllimpactlevelSQL('${i.Name}','${i.Description}',${i.CreatedBy},${i.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.impactlevel(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${i.Name}','${i.Description}','${i.CreatedBy}','${i.UpdatedBy}')`;
        return sql;
    }
    static AddAllprocessSQL(i) {
        let sql = `Call  addAllprocessSQL('${i.Name}','${i.Description}',${i.CreatedBy},${i.UpdatedBy},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO  lighthouse.process(Name,Description,CreatedBy,UpdatedBy) \
        // VALUES( '${i.Name}','${i.Description}','${i.CreatedBy}','${i.UpdatedBy}')`;
        return sql;
    }
    static updateAllprocessSQL(i) {
        let sql = `Call  updateAllprocessSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.process SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAlllifecycleSQL(i) {
        let sql = `Call  updateAlllifecycleSQL(${i.Indexing},${i.ID})`;
        //  let sql = `update lighthouse.lifecycle SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmappingprojectandtypeSQL(i) {
        let sql = `Call  updateAllmappingprojectandtypeSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.mappingprojectprojecttype SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmappingprojectandmilestoneSQL(i) {
        let sql = `Call  updateAllmappingprojectandmilestoneSQL(${i.Indexing},${i.ID})`;
        //  let sql = `update lighthouse.mappingprojecttypemilestones SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmappingprojectphaseSQL(i) {
        let sql = `Call  updateAllmappingprojectphaseSQL(${i.Indexing},${i.ID})`;
        //  let sql = `update lighthouse.mappingprojectphase SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllfunctionsSQL(i) {
        let sql = `Call  updateAllfunctionsSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.functions SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAlldepartmentSQL(i) {
        let sql = `Call  updateAlldepartmentSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.department SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllimpactcategorySQL(i) {
        let sql = `Call  updateAllimpactcategorySQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.impactcategory SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllimpactlevelSQL(i) {
        let sql = `Call  updateAllimpactlevelSQL(${i.Indexing},${i.ID})`;
        //let sql = `update lighthouse.impactlevel SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllprojecttypeSQL(i) {
        let sql = `Call  updateAllprojecttypeSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.projecttype SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllprojectsSQL(i) {
        let sql = `Call  updateAllprojectsSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.project SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllphasesSQL(i) {
        let sql = `Call  updateAllphasesSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.phase SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmilestonesSQL(i) {
        let sql = `Call  updateAllmilestonesSQL(${i.Indexing},${i.ID})`;
        // let sql = `update lighthouse.milestone SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateprojecttypeSQL(i) {
        let sql = `Call  updateprojecttypeSQL('${i.Name}',${i.ID})`;
        //let sql = `update lighthouse.projecttype SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updateprojectSQL(i) {
        let sql = `Call  updateprojectSQL('${i.Name}',${i.ID})`;
        //let sql = `update lighthouse.project SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updateprocessSQL(i) {
        let sql = `Call  updateprocessSQL('${i.Name}',${i.ID})`;
        //  let sql = `update lighthouse.process SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updatephasesSQL(i) {
        let sql = `Call  updatephasesSQL('${i.Name}',${i.ID})`;
        // let sql = `update lighthouse.phase SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updatedepartmentSQL(i) {
        let sql = `Call  updatedepartmentSQL('${i.Name}',${i.ID})`;
        // let sql = `update lighthouse.department SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updatefunctionSQL(i) {
        let sql = `Call  updatefunctionSQL('${i.Name}',${i.ID})`;
        // let sql = `update lighthouse.functions SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;

    }
    static updateimpactcategorySQL(i) {
        let sql = `Call  updateimpactcategorySQL('${i.Name}',${i.ID})`;
        // let sql = `update lighthouse.impactcategory SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updateimpactlevelSQL(i) {
        let sql = `Call  updateimpactlevelSQL('${i.Name}',${i.ID})`;
        // let sql = `update lighthouse.impactlevel SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updatelifecycleSQL(i) {
        let sql = `Call  updatelifecycleSQL('${i.Name}',${i.ID})`;
        // let sql = `update lighthouse.lifecycle SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updatemilestonesSQL(i) {
        let sql = `Call  updatemilestonesSQL('${i.Name}',${i.ID})`;
        //  let sql = `update lighthouse.milestone SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static getprojecttypebyid(ID) {
        let sql = `Call  getprojecttypebyid(${ID})`;
        //  let sql = `select ID,Name,Description,Indexing from lighthouse.projecttype  where ID='${ID}'`;
        return sql;
    }
    static getprojectbyid(ID) {
        let sql = `Call  getprojectbyid(${ID})`;
        // let sql = `select ID,Name,Description,Indexing from lighthouse.project  where ID='${ID}'`;
        return sql;
    }
    static getprocessbyid(ID) {
        let sql = `Call  getprocessbyid(${ID})`;
        // let sql = `select ID,Name,Description,Indexing from lighthouse.process  where ID='${ID}'`;
        return sql;
    }
    static getphasesbyid(ID) {
        let sql = `Call  getphasesbyid(${ID})`;
        //  let sql = `select ID,Name,Description,Indexing from lighthouse.phase  where ID='${ID}'`;
        return sql;
    }
    static getlifecyclebyid(ID) {
        let sql = `Call  getlifecyclebyid(${ID})`;
        //  let sql = `select ID,Name,Description,Indexing from lighthouse.lifecycle  where ID='${ID}'`;
        return sql;
    }
    static getimpactlevelbyid(ID) {
        let sql = `Call  getimpactlevelbyid(${ID})`;
        // let sql = `select ID,Name,Description,Indexing from lighthouse.impactlevel  where ID='${ID}'`;
        return sql;
    }
    static getimpactcategorybyid(ID) {
        let sql = `Call  getimpactcategorybyid(${ID})`;
        // let sql = `select ID,Name,Description,Indexing from lighthouse.impactcategory  where ID='${ID}'`;
        return sql;
    }
    static getfunctionsbyid(ID) {
        let sql = `Call  getfunctionsbyid(${ID})`;
        //let sql = `select ID,Name,Description,Indexing from lighthouse.functions  where ID='${ID}'`;
        return sql;
    }
    static getdepartmentsbyid(ID) {
        let sql = `Call  getdepartmentsbyid(${ID})`;
        // let sql = `select ID,Name,Description,Indexing from lighthouse.department  where ID='${ID}'`;
        return sql;
    }
    static getmilestonesbyid(ID) {
        let sql = `Call  getmilestonesbyid(${ID})`;
        // let sql = `select ID,Name,Description,Indexing from lighthouse.milestone  where ID='${ID}'`;
        return sql;
    }
    static mappingprojectphase() {
        let sql = `call mappingprojectphase()`;
        // let sql = `SELECT ph.ID,map.phaseID,ph.Name,map.Indexing,map.ID as mid,pr.Name as projecttype
        // FROM  mappingprojectphase map
        // INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
        // INNER JOIN phase ph on ph.ID =map.PhaseID order by Indexing `;
        return sql;
    }
    //pie chart
    static getmilestoneByUserPieChartSQL(ID) {
        let sql = `Call  getmilestoneByUserPieChartSQL(${ID})`;
        // let sql = `SELECT mil.Name as milestone,COUNT(MilestoneID) as total
        // FROM lesson les 
        // Inner join milestone mil on mil.ID = les.MilestoneID where ProjectTypeID='${ID}'
        // GROUP BY milestone;`;
        return sql;
    }
    //pie chart
    static getfunctionsByUserPieChartSQL() {
        let sql = `call getfunctionsByUserPieChartSQL()`;
        // let sql = `SELECT fun.Name as functions,COUNT(FunctionID) as total
        // FROM lesson les 
        // Inner join functions fun on fun.ID = les.FunctionID 
        // GROUP BY functions;`
        return sql;
    }
    // bar chart
    static getphaseBybarchartSQL() {
        //  console.log("select pha.Name as phase++++++++++++++++ID++++++++++++", ID);
        let sql = `Call  getphaseBybarchartSQL(${ID})`;
        // let sql = ` select pha.Name as phase,COUNT(PhaseID) as total,(select count(ID) from lesson) as totallesson
        // FROM lesson les 
        // Inner join phase pha on pha.ID = les.PhaseID where ProjectTypeID='${ID}'
        // GROUP BY  phase;`
        return sql;
    }
    // bar graph
    static getimpactcategoryBybarchartSQL() {
        let sql = `call getimpactcategoryBybarchartSQL()`;
        // let sql = `select imp.Name as impact,COUNT(ImpactCategoryID) as total,(select count(ID) from lesson) as totallesson
        // FROM lesson les 
        // Inner join impactcategory imp on imp.ID = les.ImpactCategoryID 
        // GROUP BY  ImpactCategoryID;`
        return sql;
    }
    static gettypeBypiechartSQL() {
        let sql = `call gettypeBypiechartSQL()`;
        // let sql = `select typ.Name as typ,COUNT(TypeID) as total,(select count(ID) from lesson) as totallesson
        // FROM lesson les 
        // Inner join type typ on typ.ID = les.TypeID 
        // GROUP BY  TypeID`;
        return sql;
    }
    //SELECT count(ID) FROM lesson WHERE CreatedDate <= CURDATE();
    static getdepartmentBybarchartSQL() {
        let sql = `call getdepartmentBybarchartSQL()`;
        //     let sql = `select dp.Name as deprt,COUNT(DepartmentID) as total,(select count(ID) from lesson) as totallesson
        // FROM lesson les 
        // Inner join department dp on dp.ID = les.DepartmentID 
        // GROUP BY  DepartmentID;`
        return sql;
    }
    static getdepartmentBybarSQL() {
        let sql = `call getdepartmentBybarSQL()`;
        // let sql = `SELECT Name as deprt FROM lighthouse.department;`
        return sql;
    }
    static getprojectBypiechartSQL() {
        let sql = `call getprojectBypiechartSQL(${ID})`;
        //     let sql = `select pr.Name as project,COUNT(ProjectID) as total,(select count(ID) from lesson) as totallesson
        // FROM lesson les 
        // Inner join project pr on pr.ID = les.ProjectID where ProjectTypeID='${ID}'
        // GROUP BY  project;`
        return sql;
    }
    // id =1 ->project and id =2 ->process
    static getcountlessontype(id) {
        let sql = `call getcountlessontype(${id})`;
        // let sql = `select count(lesson.LessonTypeID)as total, (select count(ID) from lesson)as totallesson  from lesson where LessonTypeID =${id}`
        return sql;
    }
    static getcounttype(id) {
        let sql = `call getcounttype(${id})`;
        // let sql = `select count(lesson.TypeID)as total, (select count(ID) from lesson)as totallesson  from lesson where TypeID=${id}`
        return sql;
    }
    static getProcessIDByName(Name) {
        let sql = `call getProcessIDByName('${Name}')`;
        //let sql = `SELECT ID FROM lighthouse.process WHERE Name = '${Name}';`;
        return sql;
    }
    static getTypeIDByName(Name) {
        let sql = `call getTypeIDByName('${Name}')`;
        //let sql = `SELECT ID FROM lighthouse.type WHERE Name = '${Name}';`;
        return sql;
    }
    static getImpactCategoryIDByName(Name) {
        let sql = `call getImpactCategoryIDByName('${Name}')`;
        //let sql = `SELECT ID FROM lighthouse.impactcategory WHERE Name = '${Name}';`;
        return sql;
    }
    static getImpactLevelIDByName(Name) {
        let sql = `call getImpactLevelIDByName('${Name}')`;
        // let sql = `SELECT ID FROM lighthouse.impactlevel WHERE Name = '${Name}';`;
        return sql;
    }
    static getFunctionIDByName(Name) {
        let sql = `call getFunctionIDByName('${Name}')`;
        //let sql = `SELECT ID FROM lighthouse.functions WHERE Name = '${Name}';`;
        return sql;
    }
    static getDepartmentIDByName(Name) {
        let sql = `call getDepartmentIDByName('${Name}')`;
        // let sql = `SELECT ID FROM lighthouse.department WHERE Name = '${Name}';`;
        return sql;
    }
    static getLifeCycleIDByName(Name) {
        let sql = `call getLifeCycleIDByName('${Name}')`;
        // let sql = `SELECT ID FROM lighthouse.lifecycle WHERE Name = '${Name}';`;
        return sql;
    }
    static getProjectIDByName(Name) {
        let sql = `call getProjectIDByName('${Name}')`;
        // let sql = `SELECT ID FROM lighthouse.project WHERE Name = '${Name}';`;
        return sql;
    }
    static getProjectTypeIDByName(Name) {
        let sql = `call getProjectTypeIDByName('${Name}')`;
        // let sql = `SELECT ID FROM lighthouse.projecttype WHERE Name = '${Name}';`;
        return sql;
    }
    static getPhaseIDByName(Name) {
        let sql = `call getPhaseIDByName('${Name}')`;
        //  let sql = `SELECT ID FROM lighthouse.phase WHERE Name = '${Name}';`;
        return sql;
    }
    static getMilestoneIDByName(Name) {
        let sql = `call getMilestoneIDByName('${Name}')`;
        // let sql = `SELECT ID FROM lighthouse.milestone WHERE Name = '${Name}';`;
        return sql;
    }
    static getUserIDByEmail(Email) {
        let sql = `call getUserIDByEmail('${Email}')`;
        // let sql = `SELECT ID FROM lighthouse.user WHERE Email = '${Email}';`;
        return sql;
    }
    static checkKeywordIDByName(Name) {
        let sql = `call checkKeywordIDByName('${Name}')`;
        // let sql = `SELECT ID, Name FROM lighthouse.keyword WHERE Name = '${Name}';`;
        return sql;
    }
    static addBulkErrorImportSQL(index, row, errorF, rowIndex, columnIndex, errorMessage) {
        let sql = `Call  addBulkErrorImportSQL("'${errorMessage}'",'${errorF}',${rowIndex},${columnIndex},'${row[0]}','${row[1]}','${row[2]}','${row[6]}','${row[3]}','${row[4]}','${row[5]}','${row[11]}','${row[16]}','${row[17]}','${row[8]}','${row[9]}','${row[10]}','${row[12]}','${row[13]}','${row[14]}','${row[15]}','${row[7]}',${index},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.bulkimporterrors (ErrorMessage,ErrorField,RowField,ColumnField,Name,Email,ProjectType,ProcessField,Project,Phase,Milestone,Type,ImpactCategory,ImpactLevel,FunctionField,Department,Title,Description,RootCause,Recommendation,Keywords,LifeCycle,IndexID) VALUES \
        //     ("'${errorMessage}'",'${errorF}','${rowIndex}','${columnIndex}','${row[0]}','${row[1]}','${row[2]}','${row[6]}','${row[3]}','${row[4]}','${row[5]}','${row[11]}','${row[16]}','${row[17]}','${row[8]}','${row[9]}','${row[10]}','${row[12]}','${row[13]}','${row[14]}','${row[15]}','${row[7]}','${index}');`;
        return sql;
    }
    static addBulkImportSQL(fileName, filePath, successLength, errorLengthe, UserID) {
        // console.log("successLength--------------------",successLength,"errorLengthe+++++++++++++++++++++",errorLengthe);
        let sql = `Call  addBulkImportSQL('${fileName}',${successLength},${errorLengthe},'${filePath}',${UserID},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.bulkimport (FileName,TotalEntry,TotalEntryError,FilePath,ImportDate,CreatedBy) VALUES \
        //     ('${fileName}','${successLength}','${errorLengthe}','${filePath}',now(),'${UserID}');`;
        return sql;
    }
    static mappingBulkImportAndErrorSQL(BulkImportID, BulkImportErrorID) {
        let sql = `Call  mappingBulkImportAndErrorSQL(${BulkImportID},${BulkImportErrorID},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.mappingbulkimportbulkimporterror (BulkImportID,BulkImportErrorID) VALUES \
        //     ('${BulkImportID}','${BulkImportErrorID}');`;
        return sql;
    }
    static getBulkImportErrorData(ID) {
        let sql = `Call  getBulkImportErrorData(${ID})`;
        // let sql = `select bie.ErrorMessage,bie.ErrorField,bie.RowField,bie.ColumnField,bie.Name,bie.Email,bie.ProjectType,bie.ProcessField,bie.Project,bie.Phase,bie.Milestone,bie.Type,bie.ImpactCategory,
        // bie.ImpactLevel,bie.FunctionField,bie.Department,bie.Title,bie.Description,bie.RootCause,bie.Recommendation,bie.Keywords,bie.LifeCycle
        // from lighthouse.bulkimporterrors  bie
        // Inner join mappingbulkimportbulkimporterror mbibie on bie.ID =mbibie.BulkImportErrorID where  mbibie.BulkImportID=${ID};`
        return sql;
    }
    static getallbulkSql() {
        let sql = `call getallbulkSql()`;
        // let sql = `SELECT bi.ID,bi.FileName,bi.TotalEntry,bi.TotalEntryError,bi.ErrorFileName,bi.FilePath,bi.ErrorFilePath,bi.ImportDate,ur.FirstName,ur.LastName
        // FROM lighthouse.bulkimport bi
        // INNER JOIN user ur on ur.ID = bi.CreatedBy
        // order by bi.ImportDate DESC`
        return sql;
    }
    static updateBulkSQL(ID, fileName, filePath) {

        // console.log(o.ProjectID, "o.ProjectID");
        let sql = `Call  updateBulkSQL('${fileName}','${filePath}',${ID})`;
        // let sql = `update lighthouse.bulkimport SET ErrorFileName='${fileName}',ErrorFilePath='${filePath}' where ID='${ID}'`;
        return sql;

    }
    static authUserByEmail(email) {
        let sql = `Call  authUserByEmail('${email}')`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.Email,ul.IsEnabled,murl.roleid FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid  WHERE ul.Email = "${email}";`
        return sql;
    }
    static getAllUser() {
        let sql = `call getAllUser()`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        // LEFT JOIN googleuser gu on ul.Email = gu.Email;`;
        return sql;
    }
    static userRegistration(obj) {
        let sql = `Call  userRegistration('${obj.FirstName}','${obj.LastName}','${obj.Email}',${obj.EmailNotification},${obj.UserID},${obj.IsEnabled},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.user (FirstName,LastName,Email,EmailNotification,CreatedBy,CreatedDate,IsEnabled) VALUES \
        //     ('${obj.FirstName}','${obj.LastName}','${obj.Email}','${obj.EmailNotification}','${obj.UserID}',now(),'${obj.IsEnabled}');`;
        return sql;
    }
    static mappingUserRoles(userID, roleID) {
        let sql = `Call  mappingUserRoles(${userID},${roleID},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.mappinguserrole (UserID,RoleID) VALUES \
        //     ('${userID}','${roleID}');`;
        return sql;
    }
    static googleUser(json, IsEnabled) {
        let sql = `Call  googleUser('${json.sub}','${json.name}','${json.given_name}','${json.family_name}','${json.picture}','${json.email}','${json.email_verified}','${json.hd}',${IsEnabled},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.googleuser (Sub,Name,GivenName,FamilyName,Picture,Email,EmailVerified,Hd, CreatedDate, IsEnabled) VALUES \
        //     ('${json.sub}','${json.name}','${json.given_name}','${json.family_name}','${json.picture}','${json.email}','${json.email_verified}','${json.hd}',now(),'${IsEnabled}');`;
        return sql;
    }
    static getGoogleUser(email, IsEnabled) {
        let sql = `call getGoogleUser('${email}',${IsEnabled})`;
        // let sql = `SELECT gu.ID,gu.Name,gu.Email,gu.Picture FROM googleuser gu
        // INNER JOIN user ur on ur.Email = gu.Email
        // where gu.Email = '${email}' and gu.IsEnabled = '${IsEnabled}';`;
        return sql;
    }
    static userAccountSettings(obj) {
        let sql = `call userAccountSettings(${obj.UserID},'${obj.SettFirstName}','${obj.SettLastName}','${obj.Notifications}',${obj.Status},${obj.SettingUserID})`;
        // let sql = `UPDATE lighthouse.user
        // SET FirstName='${obj.SettFirstName}',LastName='${obj.SettLastName}',UpdatedBy='${obj.UserID}',EmailNotification='${obj.Notifications}', UpdatedDate=now(), IsEnabled='${obj.Status}'
        // WHERE ID='${obj.SettingUserID}';`;
        return sql;
    }
    static mappingUserRolesAccountSettings(obj) {
        let sql = `call mappingUserRolesAccountSettings(${obj.SettRoles},${obj.SettingUserID})`;
        //  console.log(obj.SettRoles);
        //  console.log(obj.SettingUserID);
        //  let sql = `UPDATE lighthouse.mappinguserrole SET RoleID='${obj.SettRoles}' WHERE UserID='${obj.SettingUserID}';`;
        return sql;
    }
    static deleteUserSQL(ID) {
        let sql = `call deleteUserSQL(${ID})`;
        // let sql = `DELETE from lighthouse.user where ID=${ID}`;
        return sql;
    }
    static deleteMappingUserRolesSQL(ID) {
        let sql = `call deleteMappingUserRolesSQL(${ID})`;
        // let sql = `DELETE from lighthouse.mappinguserrole where UserID=${ID}`;
        return sql;
    }
    static getAllPendingUser() {
        let sql = `call getAllPendingUser()`;
        // let sql = `SELECT ID, Name, GivenName, FamilyName, Picture, Email, CreatedDate  FROM lighthouse.googleuser WHERE IsEnabled = 0 order by CreatedDate DESC;`;
        return sql;
    }
    static getPendingUserByID(ID) {
        let sql = `call getPendingUserByID(${ID})`;
        //  let sql = `SELECT ID, Name, GivenName, FamilyName, Picture, Email, CreatedDate  FROM lighthouse.googleuser WHERE ID = ${ID};`;
        return sql;
    }
    static updateGoogleUser(obj) {
        let sql = `call updateGoogleUser(${obj.IsEnabled},'${obj.Email}')`;
        // let sql = `UPDATE lighthouse.googleuser SET IsEnabled='${obj.IsEnabled}' WHERE Email='${obj.Email}';`;
        return sql;
    }
    static getUserByID(ID) {
        let sql = `call getUserByID(${ID})`;
        // let sql = `SELECT Email,FirstName  FROM lighthouse.user WHERE ID = ${ID};`;
        return sql;

    }
    static deleteGoogleUser(Email) {
        let sql = `call deleteGoogleUser('${Email}')`;
        // let sql = `DELETE from lighthouse.googleuser where Email =  '${Email}';`;
        return sql;
    }
    static pendingUserDelete(ID) {
        let sql = `call pendingUserDelete(${ID})`;
        //  let sql = `DELETE from lighthouse.googleuser where ID =  '${ID}';`;
        return sql;
    }
    static getGoogleUserBYEmail(email, IsEnabled) {
        let sql = `call getGoogleUserBYEmail('${email}', ${IsEnabled})`;
        // let sql = `SELECT ID,Name,Email,Picture FROM googleuser 
        // where Email = '${email}' and IsEnabled = '${IsEnabled}';`;
        return sql;
    }
    static getcountlessonbymonth() {
        let sql = `call getcountlessonbymonth()`;
        // let sql = `SELECT count(ID) as lastthreemonth,(select count(ID) 
        // FROM lighthouse.lesson
        // WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -1 MONTH)) as currentmonth ,(select count(ID) 
        // FROM lighthouse.lesson
        // WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -5 MONTH)) as lastfivemonth,(select count(ID) 
        // FROM lighthouse.lesson
        // WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -10 MONTH)) as lasttenmonth
        // FROM lighthouse.lesson 
        // WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -3 MONTH)`;
        return sql;
    }
    static getUserEmailForNotification() {
        let sql = `call getUserEmailForNotification()`;
        // let sql = `SELECT Email FROM lighthouse.user WHERE EmailNotification = 1;`;
        return sql;
    }
    static updateAvatarImage(email, picture, isEnabled) {
        let sql = `call updateAvatarImage('${picture}', '${email}',${isEnabled})`;
        // let sql = `UPDATE lighthouse.googleuser SET Picture='${picture}' WHERE Email='${email}' and IsEnabled='${isEnabled}';`;
        return sql;
    }
    static getFrequency() {
        let sql = `call getFrequency()`;
        // let sql = `SELECT ID, Name FROM lighthouse.notificationrepeat;`;
        return sql;
    }
    static addNotification(obj) {
        let sql = `Call  addNotification(${obj.UserID},${obj.ProjectType},${obj.Projectname},${obj.ProjectPhase},${obj.Process},${obj.Impectcategory},${obj.Impectlevel},${obj.Projectphasemilestone},${obj.Function},${obj.Department},${obj.Lifecycle},${obj.Frequency},${obj.UserID},${obj.IsEnabled},@LID); select @LID as insertId;`;
        // let sql = `INSERT INTO lighthouse.notification (UserID,ProjectTypeID,ProjectID,PhaseID,ProcessID,ImpactCategoryID,ImpactLevelID,MilestoneID,FunctionID, DepartmentID,LifeCycleID,Frequency,CreatedBy,CreatedDate, IsEnabled) VALUES \
        // ('${obj.UserID}','${obj.ProjectType}','${obj.Projectname}','${obj.ProjectPhase}','${obj.Process}','${obj.Impectcategory}','${obj.Impectlevel}','${obj.Projectphasemilestone}','${obj.Function}','${obj.Department}','${obj.Lifecycle}','${obj.Frequency}','${obj.UserID}',now(),'${obj.IsEnabled}');`;
        return sql;
    }
    static getAllNotification(UserID) {
        let sql = `call getAllNotification(${UserID})`;
        // let sql = `SELECT ntf.ID, us.Email as email, pro.Name as ProjectType, pro.ID as ProjectTypeID, pr.Name as ProjectName, proc.ID as ProcessID, proc.Name as ProcessName, pr.ID as ProjectNameID, p.Name as Phase, p.ID as PhaseID,imp.Name as ImpactCategory,imp.ID as ImpactCategoryID, im.Name as ImpactLevel, im.ID as ImpactLevelID, mil.Name as Milestone, mil.ID as MilestoneID, f.Name as Functions, f.ID as FunctionsID, d.Name as Department, d.ID as DepartmentID, lf.Name as LifeCycle, lf.ID as LifeCycleID, ntr.Name as Frequency, ntr.ID as FrequencyID
        // FROM lighthouse.notification ntf
        // left join project pr on pr.ID =ntf.ProjectID
        // left join projecttype pro on pro.ID =ntf.ProjectTypeID
        // left join process proc on proc.ID =ntf.ProcessID
        // left join user us on us.ID = ntf.UserID
        // left join phase p on p.ID =ntf.PhaseID
        // left join impactlevel im on im.ID =ntf.ImpactLevelID
        // left join milestone mil on mil.ID = ntf.MilestoneID
        // left join department d on d.ID =ntf.DepartmentID
        // left Join functions f on f.ID =ntf.FunctionID
        // left join lifecycle lf on lf.ID = ntf.LifeCycleID
        // left join impactcategory imp on imp.ID =ntf.ImpactCategoryID
        // left join notificationrepeat ntr on ntr.ID =ntf.Frequency
        // WHERE ntf.IsEnabled = 1 and UserID = ${UserID} order by ntf.CreatedDate DESC;`;
        return sql;
    }
    static getAllNotificationByData(duration) {
        let frequency = 0;
        if (duration == "day") {
            frequency = 1;
        } else if (duration == "week") {
            frequency = 2;
        } else if (duration == "month") {
            frequency = 3;
        }
        let sql = `call getAllNotificationByData(${frequency})`;
        // let sql = `SELECT ID,UserID,ProjectTypeID,ProjectID,PhaseID,ImpactCategoryID,ProcessID,ImpactLevelID,MilestoneID,FunctionID,DepartmentID,LifeCycleID FROM lighthouse.notification where Frequency=${frequency}`;
        return sql;

    }
    static getAllNotificationByDataWithLesson(ntf, duration) {
        let str = '';
        let frequency = 0;
        if (duration == "day") {
            frequency = 1;
        } else if (duration == "week") {
            frequency = 2;
        } else if (duration == "month") {
            frequency = 3;
        }
        if (ntf.ProjectTypeID) str += "and (ls.ProjectTypeID = ntf.ProjectTypeID)";
        if (ntf.ProjectID) str += "and (ls.ProjectID = ntf.ProjectID)";
        if (ntf.ProcessID) str += "and (ls.ProcessID = ntf.ProcessID)";
        if (ntf.PhaseID) str += "and (ls.PhaseID = ntf.PhaseID)";
        if (ntf.ImpactCategoryID) str += "and (ls.ImpactCategoryID = ntf.ImpactCategoryID)";
        if (ntf.ImpactLevelID) str += "and (ls.ImpactLevelID = ntf.ImpactLevelID)";
        if (ntf.MilestoneID) str += "and (ls.MilestoneID = ntf.MilestoneID)";
        if (ntf.FunctionID) str += "and (ls.FunctionID = ntf.FunctionID)";
        if (ntf.DepartmentID) str += "and (ls.DepartmentID = ntf.DepartmentID)";
        if (ntf.LifeCycleID) str += "and (ls.LifeCycleID = ntf.LifeCycleID)";
        let sql = `SELECT ntf.UserID as User,  ntf.ID as ntfID, ls.ID as lsID
        FROM lighthouse.notification ntf
        inner join lesson ls on (ls.IsEnabled = ntf.IsEnabled) ${str}
        WHERE ls.CreatedDate >= NOW() - INTERVAL 1 ${duration} and ntf.Frequency=${frequency};`;
        return sql;
    }
    static getLessonByIDSQL(id) {
        //let sql = `call getLessonByIDSQL(${id})`;
        console.log("id---", id);
        let sql = `SELECT ID,ProjectID,ProcessID,Title FROM lighthouse.lesson where ID in (${id});`;
        return sql;
    }
    static deleteNotification(ID) {
        let sql = `call deleteNotification(${ID})`;
        // let sql = `DELETE from lighthouse.notification where ID=${ID}`;
        return sql;

    }
    static editNotification(obj) {
        let sql = `call editNotification(${obj.ProjectType},${obj.Projectname},${obj.ProjectPhase},${obj.Process},${obj.Impectcategory},${obj.Impectlevel},${obj.Projectphasemilestone},${obj.Function},${obj.Department},${obj.Lifecycle},${obj.Frequency},${obj.ID})`;
        //let sql = `update lighthouse.notification SET ProjectTypeID = '${obj.ProjectType}',ProjectID='${obj.Projectname}',PhaseID='${obj.ProjectPhase}',ProcessID='${obj.Process}',ImpactCategoryID='${obj.Impectcategory}',ImpactLevelID='${obj.Impectlevel}',MilestoneID='${obj.Projectphasemilestone}',FunctionID='${obj.Function}', DepartmentID='${obj.Department}',LifeCycleID='${obj.Lifecycle}',Frequency='${obj.Frequency}',UpdatedDate=now() where ID=${obj.ID};`;
        return sql;
    }
    static deleteMultiLessons(lessonsIDs) {
        // let sql = `call deleteMultiLessons('${lessonsIDs}')`;
        let sql = `DELETE from lighthouse.lesson where ID IN (${lessonsIDs})`;
        return sql;

    }
    static getAllUserOrderByName(orderName) {
        let sql = `call getAllUserOrderByName('${orderName}')`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        // FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        // LEFT JOIN googleuser gu on ul.Email = gu.Email
        // ORDER BY ul.FirstName ${orderName};`;
        return sql;
    }
    static getAllUserOrderByDate(orderDate) {
        let sql = `call getAllUserOrderByDate('${orderDate}')`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        // FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        // LEFT JOIN googleuser gu on ul.Email = gu.Email
        // ORDER BY ul.CreatedDate ${orderDate};`;
        return sql;
    }
    static getAllUserOrderByRole(orderRole) {
        let sql = `call getAllUserOrderByRole('${orderRole}')`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        // FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        // LEFT JOIN googleuser gu on ul.Email = gu.Email
        // ORDER BY  murl.roleid ${orderRole};`;
        return sql;
    }
    static getAllUserOrderByStatus(orderStatus) {
        let sql = `call getAllUserOrderByStatus('${orderStatus}')`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        // FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        // LEFT JOIN googleuser gu on ul.Email = gu.Email
        // ORDER BY  ul.IsEnabled ${orderStatus};`;
        return sql;
    }
    static getAllUserOrderByURE(orderURE) {
        let sql = `call getAllUserOrderByURE('${orderURE}')`;
        // let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture 
        // FROM User ul 
        // INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        // LEFT JOIN googleuser gu on ul.Email = gu.Email
        // ORDER BY  ul.EmailNotification ${orderURE};`;
        return sql;
    }
    static getuserusefulbylessonID(ID) {
        //let sql = Call  getdepartmentsbyid(${ID});
        let sql = 	`select * from lighthouse.userusefullesson  where LessonID='${ID}'`;
        return sql;
    }
    static updateflag (p) {
        //let sql = call updateProjectsSQL('${p.LPN}',${p.ID});
        let sql = `update lighthouse.userusefullesson SET flag ='${p.flag}', Description='${p.Description}' where ID='${p.ID}'`;
        return sql;
    }
}
module.exports = User;