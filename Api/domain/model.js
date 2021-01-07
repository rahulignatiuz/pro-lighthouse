class User {

    static getUserLoginSQL(Username, Password) {
        //let sql = `SELECT ID,UserProfileID,Email FROM roche_llms.userlogin WHERE UserName = "${Username}" and Password="${Password}" INNER JOIN roche_llms.roles (Id);`;
        let sql = `SELECT ul.ID,ul.UserName,ul.UserProfileID,ul.Email,userprofile.DisplayName,murl.roleid,r.Name FROM User ul 
        INNER JOIN userprofile  on ul.ID = userprofile.ID
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        INNER JOIN Role r on murl.RoleID = r.ID
        WHERE ul.UserName = "${Username}" and ul.Password="${Password}" ;`
        return sql;
    }
    // get all lessons -> projects
    static getAllLessonProjectSQL() {
        let sql = `select COUNT(ul.Likes) as likes, les.ID,les.Title,les.CreatedDate,les.Recommendation,les.RootCause,les.IssueDescription,lt.Name as lessontypeName,pr.LPN,pr.Name,p.Name as phase,
        im.Name as impactlevel,mil.Name as milestone,imp.Name as impactcategory,t.Name as Type,f.Name as functions,d.Name as department,lf.Name as lifecycle
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID 
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
		left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID = 1
        group by les.ID order by CreatedDate desc`;
        return sql;
    }
    // get all lessons -> Process
    static getAllLessonProcessSQL() {
        let sql = `select COUNT(ul.Likes) as likes, les.ID,les.Title,les.CreatedDate,les.Recommendation,les.RootCause,les.IssueDescription,lt.Name as lessontypeName,
        im.Name as impactlevel,imp.Name as impactcategory,t.Name as Type,f.Name as functions,d.Name as department, proc.Name as Name,lf.Name as lifecycle
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join user us on us.ID = les.UserID
        Inner join process proc on proc.ID =les.ProcessID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID 
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
		left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID = 2
        group by les.ID order by CreatedDate desc;`;
        return sql;
    }
    //delete lesson by lessonid
    static deletelessonsSQL(ID) {
        let sql = `DELETE from lighthouse.lesson where ID=${ID}`;
        return sql;
    }
    static deleteAttachmnetSQL(ID) {
        let sql = `DELETE mla, att from lighthouse.mappinglessonattachment mla INNER JOIN lighthouse.attachment att  on mla.AttachmentID = att.ID where mla.LessonID=${ID}`;
        return sql;
    }
    // add lesson by both project and process
    static addLessonSQL(o) {
        if (o.ProcessID) {
            let sql = `INSERT INTO lighthouse.lesson (UserID,LessonTypeID,ProcessID,TypeID,ImpactCategoryID,ImpactLevelID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES \
            ('${o.UserID}','${o.LessonTypeID}','${o.ProcessID}','${o.TypeID}','${o.ImpactCategoryID}','${o.ImpactLevelID}','${o.FunctionID}','${o.LifeCycleID}','${o.DepartmentID}','${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}','${o.CreatedBy}',now(),'${o.IsEnabled}');`;
            return sql;
        } else if (o.ProjectID) {
            let sql = `INSERT INTO lighthouse.lesson (UserID,LessonTypeID,ProjectTypeID,ProjectID,PhaseID,TypeID,ImpactCategoryID,ImpactLevelID,MilestoneID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES \
            ('${o.UserID}','${o.LessonTypeID}','${o.ProjectTypeID}','${o.ProjectID}','${o.PhaseID}','${o.TypeID}','${o.ImpactCategoryID}','${o.ImpactLevelID}','${o.MilestoneID}','${o.FunctionID}','${o.LifeCycleID}','${o.DepartmentID}','${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}','${o.CreatedBy}',now(),'${o.IsEnabled}');`;
            return sql;
        } else {
            let sql = `INSERT INTO lighthouse.lesson (UserID,LessonTypeID,ProjectTypeID,ProjectID,ProcessID,PhaseID,TypeID,ImpactCategoryID,ImpactLevelID,MilestoneID,FunctionID,LifeCycleID,DepartmentID,Title,IssueDescription,RootCause,Recommendation,CreatedBy,CreatedDate,IsEnabled) VALUES \
            ('${o.UserID}','${o.LessonTypeID}','${o.ProjectTypeID}','${o.ProjectID}','${o.ProcessID}','${o.PhaseID}','${o.TypeID}','${o.ImpactCategoryID}','${o.ImpactLevelID}','${o.MilestoneID}','${o.FunctionID}','${o.LifeCycleID}','${o.DepartmentID}','${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}','${o.CreatedBy}',now(),'${o.IsEnabled}');`;
            return sql;
        }
        return sql;
    }
    static addLessonSQLBulk(o) {

        let sql = `INSERT INTO lighthouse.lesson (Title,IssueDescription,RootCause,Recommendation,CreatedDate,IsEnabled) VALUES \
            ('${o.Title}','${o.IssueDescription}','${o.RootCause}','${o.Recommendation}',now(),'${o.IsEnabled}');`;
        return sql;
    }
    static updateLessonBybulk(lessonID, o) {

        if (o.ProjectID) {
            console.log(o.ProjectID, "o.ProjectID");
            let sql = `update lighthouse.lesson SET UserID='${o.UserID}', LessonTypeID='${o.LessonTypeID}',LifeCycleID='${o.LifeCycleID}',ProjectTypeID='${o.ProjectTypeID}',TypeID='${o.TypeID}',ProjectID='${o.ProjectID}',PhaseID='${o.PhaseID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',MilestoneID='${o.MilestoneID}',FunctionID='${o.FunctionID}' ,DepartmentID='${o.DepartmentID}', CreatedBy='${o.CreatedBy}' where ID='${lessonID}'`;
            return sql;
        } else if (o.ProcessID) {
            console.log(o.ProcessID, "o.ProcessID");
            let sql = `update lighthouse.lesson SET UserID='${o.UserID}', LessonTypeID='${o.LessonTypeID}',LifeCycleID='${o.LifeCycleID}',ProcessID='${o.ProcessID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',FunctionID='${o.FunctionID}',DepartmentID='${o.DepartmentID}', CreatedBy='${o.CreatedBy}' where ID='${lessonID}'`;
            return sql;
        }
    }
    // get department data
    static getAllDepartmentsSQL() {
        //let sql =`call rochellms.GetAlldepartment()`;
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.department order by Indexing ASC `;
        return sql;
    }
    // add department
    static AddAllDepartmentsSQL(obj) {
        let sql = `INSERT INTO  lighthouse.department(Name,Description,CreatedBy,UpdatedBy) \
    VALUES( '${obj.Name}','${obj.Description}','${obj.CreatedBy}','${obj.UpdatedBy}')`;
        return sql;

    }
    // get all data of process
    static getAllProcessSQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.process order by Indexing ASC`;
        return sql;
    }
    // used to map keyword with lesson id
    static Mappingkeywordlesson(obj) {
        let sql = `INSERT INTO lighthouse.mappinglessonkeyword(LessonID,KeywordID) \
    VALUES( '${obj.LessonID}','${obj.KeywordID}')`;
        return sql;
    }
    // to get project data
    static getAllProjectsSQL(projectTypeId) {
        console.log(projectTypeId);
        let sql = `SELECT ID,Name,LPN,Description,Indexing FROM lighthouse.project order by Indexing ASC`;
        //let sql =`SELECT lighthouse.project.ID, lighthouse.project.Name, lighthouse.project.LPN, lighthouse.project.Description FROM lighthouse.project INNER JOIN lighthouse.mappingprojectprojecttype ON lighthouse.project.ID = lighthouse.mappingprojectprojecttype.ProjectID where lighthouse.mappingprojectprojecttype.ProjecttypeID = "${projectTypeId}"  order by Name ASC`;
        return sql;
    }
    // used to get projecte data according to project type 
    static getAllMappingprojectprojectypeSQL(ProjecttypeID) {
        let sql = `SELECT pr.ID,map.projectID,pr.Name,pr.LPN,map.Indexing
    FROM  mappingprojectprojecttype map
    INNER JOIN project  pr on pr.ID = map.ProjectID
    INNER JOIN projecttype pro on pro.ID =map.ProjecttypeID where ProjecttypeID='${ProjecttypeID}'order by Indexing ASC `;
        return sql;
    }
    //used to get projectphase data according to project type
    static getAllMappingprojectphaseSQL(ProjecttypeID) {
        let sql = `SELECT ph.ID,map.phaseID,ph.Name,map.Indexing,map.ID as mid,pr.Name as projecttype
    FROM  mappingprojectphase map
    INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
    INNER JOIN phase ph on ph.ID =map.PhaseID where ProjecttypeID='${ProjecttypeID}'order by Indexing ASC `;
        return sql;
    }

    static getAllMappingprojectmilestonesSQL(ProjectID) {
        let sql = `SELECT mil.ID, map.ProjectID,map.MilestoneID,mil.Name
    FROM  mappingprojectmilestone map
    INNER JOIN project pr on pr.ID = map.ProjectID
    INNER JOIN milestone mil on mil.ID =map.MilestoneID where projectID='${ProjectID}'`;
        return sql;
    }
    // used to get all keywords data
    static getAllKeywordsSQL() {

        let sql = `SELECT ID,Name,Description FROM lighthouse.keyword order by ID DESC`;
        //let sql = `SELECT ID,Name,Description FROM lighthouse.keyword order by Name ASC`;
        return sql;
    }
    // used to get all milestones data
    static getAllMilestonesSQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.milestone order by Indexing ASC`;
        return sql;
    }
    // used to get all impactcategory data
    static getAllimpactcategorySQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.impactcategory order by Indexing ASC`;
        return sql;
    }
    // used to get all phase data
    static getAllphaseSQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.phase order by Indexing ASC`;
        return sql;
    }
    // used to get all impactlevel data
    static getAllimpactlevelSQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.impactlevel order by Indexing ASC`;
        return sql;
    }
    // used to get all Projecttype data
    static getAllProjecttypeSQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.projecttype order by Indexing ASC`;
        return sql;
    }    // used to update the lpn no 
    static updateProjectsSQL(p) {
        let sql = `update lighthouse.project SET LPN='${p.LPN}' where ID='${p.ID}'`;
        return sql;
    }
    // used to update the lesson -> project and process 
    static updatelessonSQL(o) {
        if (o.ProjectID) {
            console.log(o.ProjectID, "o.ProjectID");
            let sql = `update lighthouse.lesson SET UserID='${o.UserID}',LessonTypeID='${o.LessonTypeID}',ProjectTypeID='${o.ProjectTypeID}',ProjectID='${o.ProjectID}',PhaseID='${o.PhaseID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',MilestoneID='${o.MilestoneID}',FunctionID='${o.FunctionID}',LifeCycleID='${o.LifeCycleID}',DepartmentID='${o.DepartmentID}',Title='${o.Title}',IssueDescription='${o.IssueDescription}',RootCause='${o.RootCause}',Recommendation='${o.Recommendation}',UpdatedBy='${o.UpdatedBy}',UpdatedDate=now()where ID='${o.ID}'`;
            return sql;
        } else if (o.ProcessID) {
            console.log(o.ProcessID, "o.ProcessID");
            let sql = `update lighthouse.lesson SET UserID='${o.UserID}',LessonTypeID='${o.LessonTypeID}',ProcessID='${o.ProcessID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',FunctionID='${o.FunctionID}',LifeCycleID='${o.LifeCycleID}',DepartmentID='${o.DepartmentID}',Title='${o.Title}',IssueDescription='${o.IssueDescription}',RootCause='${o.RootCause}',Recommendation='${o.Recommendation}',UpdatedBy='${o.UpdatedBy}',UpdatedDate=now()where ID='${o.ID}'`;
            return sql;
        } else {
            console.log(o.ProjectTypeID, "oTHER");
            let sql = `update lighthouse.lesson SET UserID='${o.UserID}',LessonTypeID='${o.LessonTypeID}',ProjectTypeID='${o.ProjectTypeID}',ProjectID='${o.ProjectID}',ProcessID='${o.ProcessID}',PhaseID='${o.PhaseID}',TypeID='${o.TypeID}',ImpactCategoryID='${o.ImpactCategoryID}',ImpactLevelID='${o.ImpactLevelID}',MilestoneID='${o.MilestoneID}',FunctionID='${o.FunctionID}',LifeCycleID='${o.LifeCycleID}',DepartmentID='${o.DepartmentID}',Title='${o.Title}',IssueDescription='${o.IssueDescription}',RootCause='${o.RootCause}',Recommendation='${o.Recommendation}',UpdatedBy='${o.UpdatedBy}',UpdatedDate=now()where ID='${o.ID}'`;
            return sql;
        }
        return sql;
    }
    // used to get milestones data according to project type
    static getAllMappingprojecttypemilestonesSQL(ProjecttypeID) {
        let sql = `SELECT mil.ID,map.MilestoneID,mil.Name,map.Indexing,map.ID as mid
    FROM  mappingprojecttypemilestones map
    INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
    INNER JOIN milestone mil on mil.ID =map.MilestoneID where ProjecttypeID='${ProjecttypeID}' order by Indexing ASC`;
        return sql;
    }
    // used to get lessonProject data by lesson id
    static getlessonProject(ID) {
        let sql = `select COUNT(ul.Likes) as likes,pro.Name as projecttype,pro.ID as projecttypeID, les.Recommendation,lf.ID as lifecycleID,lf.Name as lifecycle,
        les.RootCause,les.ProcessID,les.Title,les.IssueDescription,les.CreatedDate,les.UserID ,lt.Name as lessontypeName,pr.ID as projectID,pr.LPN,pr.Name as projectname,us.Email as Email,us.FirstName as firstname,us.LastName as lastname,p.Name as phase,p.ID as phaseID,
        im.Name as impactlevel,im.ID as impactlevelID,mil.Name as milestones,mil.ID as milestonesID,imp.Name as impactcategory,imp.ID as impactcategoryID,les.ID as LessonID,t.Name as Type,t.ID as TypeID,f.Name as functions,f.ID as functionID,d.Name as department,d.ID as departmentID,usles.Description as useruseful
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join projecttype pro on pro.ID =les.ProjectTypeID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
        left join userusefullesson usles on usles.LessonID=les.ID
        left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=1 and les.ID=${ID};`
        return sql;
    }
    // used to get lessonProcess data by lesson id
    static getlessonProcess(ID) {
        let sql = `select COUNT(ul.Likes) as likes, les.Recommendation,lt.Name as lessontypeName,lf.ID as lifecycleID,lf.Name as lifecycle,
        les.RootCause,les.ProcessID,les.Title,les.IssueDescription,les.CreatedDate,les.UserID ,us.Email as Email,us.FirstName as firstname,us.LastName as lastname,
        im.Name as impactlevel,im.ID as impactlevelID,imp.Name as impactcategory,imp.ID as impactcategoryID,les.ID as LessonID,t.Name as Type,t.ID as TypeID,f.Name as functions,f.ID as functionID,d.Name as department,d.ID as departmentID, proc.ID as processID, proc.Name as Name,usles.Description as useruseful
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join user us on us.ID = les.UserID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID
        Inner join type t on t.ID =les.TypeID
        Inner join department d on d.ID =les.DepartmentID
        Inner Join functions f on f.ID =les.FunctionID
        Inner Join process proc on proc.ID =les.ProcessID
        Inner join lifecycle lf on lf.ID = les.LifeCycleID
        left join userusefullesson usles on usles.LessonID=les.ID
        left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=2 and les.ID=${ID};`
        return sql;
    }
    static getLessonAttachmentSQL(LessonID) {

        let sql = `SELECT att.OriginalName,att.Url
    FROM  lighthouse.mappinglessonattachment mla
    INNER JOIN attachment att on mla.AttachmentID = att.ID where mla.LessonID='${LessonID}'`;
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
        // if (Flag == "flag") {
        //     str += " and flag=" + flag;
        // } else if (lag == "flag1") {
        //     str += " and flag1=" + flag;
        // }
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
        inner  join (SELECT LessonID,KeywordID, COUNT(*) as CourseCount FROM lighthouse.mappinglessonkeyword  ${strkey}  group by LessonID) mlk ON mlk.LessonID = les.ID
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
        inner  join (SELECT LessonID,KeywordID, COUNT(*) as CourseCount FROM lighthouse.mappinglessonkeyword  ${strkey}  group by LessonID) mlk ON mlk.LessonID = les.ID
        left join userusefullesson usr on usr.LessonID = les.ID
        left Join userlike ul on ul.lessonID = les.ID where les.LessonTypeID=2 ${str} group by les.ID order by ${sortby}`
        return sql;
    }
    // used to get all Keywords data
    static AddAllKeywordsSQL(k) {
        let sql = `INSERT INTO  lighthouse.keyword(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${k.Name}','${k.Description}','${k.CreatedBy}','${k.UpdatedBy}')`;
        return sql;
    }
    // used to get all Project data by Project id
    static getProjectProject(obj) {
        let sql = `SELECT ID,Name,LPN,Description,IsEnabled FROM lighthouse.project where ID='${obj.projectID}' order by Name ASC`;
        return sql;
    }
    // used to get all userlikes data by LessonID 
    static getAlluserlikeSQL(LessonID) {
        let sql = `SELECT COUNT('Likes') FROM lighthouse.userlike where LessonID='${LessonID}';`
        return sql;
    }
    // used to add userlikes data in table  
    static addAlluserlikeSQL(l) {
        let sql = ` INSERT INTO lighthouse.userlike ( UserID,LessonID,Likes) \
        VALUES( '${l.UserID}','${l.LessonID}','${l.Likes}')`;
        return sql;
    }
    // used to delete userlike data by ID 
    static deleteAlluserlikeSQL(ID) {
        let sql = ` DELETE From lighthouse.userlike where ID=${ID}`;
        return sql;
    }
    // used to add Attachment data 
    static AddAllAttachmentSQL(obj) {
        let sql = `INSERT INTO  lighthouse.attachment(FieldName,OriginalName,MimeType,Container,AzureBlob,FileSize,Url) \
        VALUES( '${obj.fieldname}','${obj.originalname}','${obj.mimetype}','${obj.container}','${obj.blob}','${obj.size}','${obj.url}');`;
        return sql;

    }
    // used to add attactment data according to lessonID
    static AddMappingLessonAttachmentSQL(obj) {
        let sql = `INSERT INTO  lighthouse.mappinglessonattachment(LessonID,AttachmentID) \
        VALUES( '${obj.lessonID}','${obj.attachmentID}');`;
        return sql;

    }
    static getfreesearchByFilterSQL(data) {
        let sql = `select les.Title, les.ID,pro.ID as projecttypeID,pro.Name as projecttype,les.Recommendation,
        les.RootCause,les.IssueDescription,lt.Name as lessontypeName,pr.LPN,pr.ID as projectID,pr.Name as ProjectName,us.Email as Email,p.ID as PhaseID,p.Name as phase,im.ID as impactlevelID,
        im.Name as impactlevel,Imp.ID as ImpactcategoryID,mil.ID as milestoneID,mil.Name as milestone,imp.Name as impactcategory,les.CreatedDate,t.Name as Type
        from lesson les
        Inner join lessontype lt on lt.ID =les.LessonTypeID
        Inner join project pr on pr.ID =les.ProjectID
        Inner join projecttype pro on pro.ID =les.ProjectTypeID
        Inner join user us on us.ID = les.UserID
        Inner join phase p on p.ID =les.PhaseID
        Inner join impactlevel im on im.ID =les.ImpactLevelID
        Inner join milestone mil on mil.ID = les.MilestoneID
        Inner join type t on t.ID =les.TypeID
        inner join impactcategory imp on imp.ID =les.ImpactCategoryID where pro.Name='${data}' or  pr.Name='${data}' or p.Name='${data}' or im.Name='${data}' or imp.Name='${data}' or t.Name='${data}'`
        return sql;

    }
    // used to get All Functions data 
    static getAllFunctionsSQL() {
        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.functions order by Indexing ASC `
        return sql;
    }
    // used to get All type of lesson data i.e issue or best practice
    static getalltypeoflessonSql() {
        let sql = `SELECT ID,Name,Description FROM lighthouse.type`
        return sql;
    }
    // used to check the user likes by lessonid and userid 
    static checkAlluserlikeSQL(l) {
        console.log(l);
        let sql = `SELECT * FROM lighthouse.userlike where UserID='${l.UserID}' and LessonID='${l.LessonID}';`
        return sql;
    }
    // used to add keyword through mapping by lesson id and keywordid
    static addKaywordsByMappingLessonSQL(lessonID, kaywordID) {
        let sql = ` INSERT INTO lighthouse.mappinglessonkeyword ( LessonID,KeywordID) \
        VALUES( '${lessonID}','${kaywordID}')`;
        return sql;
    }
    //used to add keywords data
    static addKaywordsBySQL(value) {
        let sql = ` INSERT INTO lighthouse.keyword ( Name,Description) \
        VALUES( '${value}','${value}')`;
        return sql;
    }
    // used to get all keywords data by lessonid
    static getAllKaywordsByID(ID) {
        let sql = `SELECT keywd.ID, keywd.Name
        FROM lighthouse.mappinglessonkeyword mlk
        INNER JOIN keyword keywd on mlk.KeywordID = keywd.ID where LessonID = ${ID};`
        return sql;
    }
    // used to dalete all keywords data in mapping table by lesson id
    static deleteAllKaywordsByID(ID) {
        let sql = `DELETE FROM lighthouse.mappinglessonkeyword where LessonID = ${ID};`
        return sql;
    }
    // used to get data of user useful data i.e implemented or not implemented
    static getAllUserusefulllessonsSQL() {
        let sql = `select ID,UserID,LessonID,Description,flag from lighthouse.userusefullesson`;
        return sql;

    }
    //used to get attachment data or file name by lesson id
    static getAttachmentNameByID(obj) {
        let sql = `SELECT att.OriginalName, att.Url FROM lighthouse.attachment as att Inner join mappinglessonattachment mla on mla.AttachmentID = att.ID where mla.LessonID = ${obj.LessonID};`
        return sql;
    }
    // used to add data in useruseful table (implemented or not implemented)
    static AddUserusefullessonsSQL(l) {
        let sql = `INSERT INTO  lighthouse.userusefullesson(UserID,LessonID,Description,flag) \
        VALUES( '${l.UserID}','${l.LessonID}','${l.Description}','${l.flag}')`;
        return sql;
    }
    // used to get total count of impact level (for dashboard)
    static getCountimpactlevelSQL(id) {
        let sql = `SELECT COUNT( lesson.ImpactLevelID ) as "TotalNumber" FROM lighthouse.lesson WHERE lesson.ImpactLevelID=${id};`;
        return sql;
    }
    // used to get total count of flag (for dashboard)
    static getallcountuserusefulSQL(id) {
        let sql = `select count(userusefullesson.flag) as total, (select count(ID) from lesson)as totallesson from userusefullesson WHERE userusefullesson.flag=${id}`;
        return sql;
    }
    static getuserusefulByUserPieChartSQL(id) {
        let sql = `SELECT COUNT( userusefullesson.flag ) as "TotalNumber" FROM lighthouse.userusefullesson WHERE userusefullesson.flag=${id}`;
        return sql;
    }
    // used to add project data in project table 
    static AddAllProjectsSQL(p) {
        let sql = `INSERT INTO  lighthouse.project(Name,LPN,Description,CreatedBy,UpdatedBy) \
        VALUES( '${p.Name}','${p.LPN}','${p.Description}','${p.CreatedBy}','${p.UpdatedBy}')`;
        return sql;

    }
    static getAllLifecycleSQL() {

        let sql = `SELECT ID,Name,Description,Indexing FROM lighthouse.lifecycle order by Indexing ASC`;
        return sql;
    }
    static AddAllProjecttypeSQL(p) {
        let sql = `INSERT INTO  lighthouse.projecttype(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${p.Name}','${p.Description}','${p.CreatedBy}','${p.UpdatedBy}')`;
        return sql;
    }
    static AddAllmappingprojectprojecttypeSQL(p) {
        let sql = `INSERT INTO  lighthouse.mappingprojectprojecttype(ProjectID,ProjecttypeID) \
        VALUES( '${p.ProjectID}','${p.ProjecttypeID}')`;
        return sql;
    }
    static AddAllmappingprojectypephaseSQL(p) {
        let sql = `INSERT INTO  lighthouse.mappingprojectphase(ProjecttypeID,PhaseID) \
        VALUES( '${p.ProjecttypeID}','${p.PhaseID}')`;
        return sql;
    }
    static AddAllmilestoneSQL(m) {
        let sql = `INSERT INTO  lighthouse.milestone(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${m.Name}','${m.Description}','${m.CreatedBy}','${m.UpdatedBy}')`;
        return sql;
    }
    static AddAllmappingprojecttypemilstonesSQL(p) {
        let sql = `INSERT INTO  lighthouse.mappingprojecttypemilestones(ProjecttypeID,MilestoneID) \
        VALUES( '${p.ProjecttypeID}','${p.MilestoneID}')`;
        return sql;
    }
    static AddAllphasesSQL(p) {
        let sql = `INSERT INTO  lighthouse.phase(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${p.Name}','${p.Description}','${p.CreatedBy}','${p.UpdatedBy}')`;
        return sql;
    }
    static AddAllfunctionsSQL(f) {
        let sql = `INSERT INTO  lighthouse.functions(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${f.Name}','${f.Description}','${f.CreatedBy}','${f.UpdatedBy}')`;
        return sql;
    }
    static AddAlllifecycleSQL(m) {
        let sql = `INSERT INTO  lighthouse.lifecycle(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${m.Name}','${m.Description}','${m.CreatedBy}','${m.UpdatedBy}')`;
        return sql;
    }
    static AddAllimpactcategorySQL(i) {
        let sql = `INSERT INTO  lighthouse.impactcategory(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${i.Name}','${i.Description}','${i.CreatedBy}','${i.UpdatedBy}')`;
        return sql;
    }
    static AddAllimpactlevelSQL(i) {
        let sql = `INSERT INTO  lighthouse.impactlevel(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${i.Name}','${i.Description}','${i.CreatedBy}','${i.UpdatedBy}')`;
        return sql;
    }
    static AddAllprocessSQL(i) {
        let sql = `INSERT INTO  lighthouse.process(Name,Description,CreatedBy,UpdatedBy) \
        VALUES( '${i.Name}','${i.Description}','${i.CreatedBy}','${i.UpdatedBy}')`;
        return sql;
    }
    static updateAllprocessSQL(i) {
        let sql = `update lighthouse.process SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAlllifecycleSQL(i) {
        let sql = `update lighthouse.lifecycle SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmappingprojectandtypeSQL(i) {
        let sql = `update lighthouse.mappingprojectprojecttype SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmappingprojectandmilestoneSQL(i) {
        let sql = `update lighthouse.mappingprojecttypemilestones SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmappingprojectphaseSQL(i) {
        let sql = `update lighthouse.mappingprojectphase SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllfunctionsSQL(i) {
        let sql = `update lighthouse.functions SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAlldepartmentSQL(i) {
        let sql = `update lighthouse.department SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllimpactcategorySQL(i) {
        let sql = `update lighthouse.impactcategory SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllimpactlevelSQL(i) {
        let sql = `update lighthouse.impactlevel SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllprojecttypeSQL(i) {
        let sql = `update lighthouse.projecttype SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllprojectsSQL(i) {
        let sql = `update lighthouse.project SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllphasesSQL(i) {
        let sql = `update lighthouse.phase SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateAllmilestonesSQL(i) {
        let sql = `update lighthouse.milestone SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static updateprojecttypeSQL(i) {
        let sql = `update lighthouse.projecttype SET Name='${i.Name}' where ID='${i.ID}'`;

        return sql;
    }
    static updateprojectSQL(i) {
        let sql = `update lighthouse.project SET Name='${i.Name}' where ID='${i.ID}'`;


        return sql;
    }
    static updateprocessSQL(i) {
        let sql = `update lighthouse.process SET Name='${i.Name}' where ID='${i.ID}'`;


        return sql;
    }
    static updatephasesSQL(i) {
        let sql = `update lighthouse.phase SET Name='${i.Name}' where ID='${i.ID}'`;



        return sql;
    }
    static updatedepartmentSQL(i) {
        let sql = `update lighthouse.department SET Name='${i.Name}' where ID='${i.ID}'`;



        return sql;
    }
    static updatefunctionSQL(i) {


        let sql = `update lighthouse.functions SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;

    }
    static updateimpactcategorySQL(i) {
        let sql = `update lighthouse.impactcategory SET Name='${i.Name}' where ID='${i.ID}'`;
        return sql;
    }
    static updateimpactlevelSQL(i) {
        let sql = `update lighthouse.impactlevel SET Name='${i.Name}' where ID='${i.ID}'`;

        return sql;
    }
    static updatelifecycleSQL(i) {
        let sql = `update lighthouse.lifecycle SET Name='${i.Name}' where ID='${i.ID}'`;


        return sql;
    }
    static updatemilestonesSQL(i) {
        let sql = `update lighthouse.milestone SET Name='${i.Name}' where ID='${i.ID}'`;

        return sql;
    }
    static getprojecttypebyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.projecttype  where ID='${ID}'`;

        return sql;
    }
    static getprojectbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.project  where ID='${ID}'`;

        return sql;
    }
    static getprocessbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.process  where ID='${ID}'`;


        return sql;
    }
    static getphasesbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.phase  where ID='${ID}'`;


        return sql;
    }
    static getlifecyclebyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.lifecycle  where ID='${ID}'`;


        return sql;
    }
    static getimpactlevelbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.impactlevel  where ID='${ID}'`;
        return sql;
    }
    static getimpactcategorybyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.impactcategory  where ID='${ID}'`;
        return sql;
    }
    static getfunctionsbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.functions  where ID='${ID}'`;
        return sql;
    }
    static getdepartmentsbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.department  where ID='${ID}'`;
        return sql;
    }
    static getmilestonesbyid(ID) {
        let sql = `select ID,Name,Description,Indexing from lighthouse.milestone  where ID='${ID}'`;
        return sql;
    }
    static mappingprojectphase() {
        let sql = `SELECT ph.ID,map.phaseID,ph.Name,map.Indexing,map.ID as mid,pr.Name as projecttype
        FROM  mappingprojectphase map
        INNER JOIN projecttype pr on pr.ID = map.ProjecttypeID
        INNER JOIN phase ph on ph.ID =map.PhaseID order by Indexing `;
        return sql;
    }
    //pie chart
    static getmilestoneByUserPieChartSQL(ID) {

        let sql = `SELECT mil.Name as milestone,COUNT(MilestoneID) as total
        FROM lesson les 
        Inner join milestone mil on mil.ID = les.MilestoneID where ProjectTypeID='${ID}'
        GROUP BY milestone;`
        return sql;
    }
    //pie chart
    static getfunctionsByUserPieChartSQL() {
        let sql = `SELECT fun.Name as functions,COUNT(FunctionID) as total
        FROM lesson les 
        Inner join functions fun on fun.ID = les.FunctionID 
        GROUP BY functions;`
        return sql;
    }
    // bar chart
    static getphaseBybarchartSQL() {
        let sql = ` select pha.Name as phase,COUNT(PhaseID) as total,(select count(ID) from lesson) as totallesson
        FROM lesson les 
        Inner join phase pha on pha.ID = les.PhaseID where ProjectTypeID='${ID}'
        GROUP BY  phase;`
        return sql;
    }
    // bar graph
    static getimpactcategoryBybarchartSQL() {
        let sql = `select imp.Name as impact,COUNT(ImpactCategoryID) as total,(select count(ID) from lesson) as totallesson
        FROM lesson les 
        Inner join impactcategory imp on imp.ID = les.ImpactCategoryID 
        GROUP BY  ImpactCategoryID;`
        return sql;
    }
    static gettypeBypiechartSQL() {
        let sql = `select typ.Name as typ,COUNT(TypeID) as total,(select count(ID) from lesson) as totallesson
        FROM lesson les 
        Inner join type typ on typ.ID = les.TypeID 
        GROUP BY  TypeID`;
        return sql;
    }
    //SELECT count(ID) FROM lesson WHERE CreatedDate <= CURDATE();
    static getdepartmentBybarchartSQL() {
        let sql = `select dp.Name as deprt,COUNT(DepartmentID) as total,(select count(ID) from lesson) as totallesson
    FROM lesson les 
    Inner join department dp on dp.ID = les.DepartmentID 
    GROUP BY  DepartmentID;`
        return sql;
    }
    static getdepartmentBybarSQL(){

        let sql =`SELECT Name as deprt FROM lighthouse.department;`
        return sql;
    }
    static getprojectBypiechartSQL() {
        let sql = `select pr.Name as project,COUNT(ProjectID) as total,(select count(ID) from lesson) as totallesson
    FROM lesson les 
    Inner join project pr on pr.ID = les.ProjectID where ProjectTypeID='${ID}'
    GROUP BY  project;`
        return sql;
    }
    // id =1 ->project and id =2 ->process
    static getcountlessontype(id) {
        let sql = `select count(lesson.LessonTypeID)as total, (select count(ID) from lesson)as totallesson  from lesson where LessonTypeID =${id}`
        return sql;
    }
    static getcounttype(id) {
        let sql = `select count(lesson.TypeID)as total, (select count(ID) from lesson)as totallesson  from lesson where TypeID=${id}`
        return sql;
    }
    static getProcessIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.process WHERE Name = '${Name}';`;
        return sql;
    }
    static getTypeIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.type WHERE Name = '${Name}';`;
        return sql;
    }
    static getImpactCategoryIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.impactcategory WHERE Name = '${Name}';`;
        return sql;
    }
    static getImpactLevelIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.impactlevel WHERE Name = '${Name}';`;
        return sql;
    }
    static getFunctionIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.functions WHERE Name = '${Name}';`;
        return sql;
    }
    static getDepartmentIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.department WHERE Name = '${Name}';`;
        return sql;
    }
    static getLifeCycleIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.lifecycle WHERE Name = '${Name}';`;
        return sql;
    }
    static getProjectIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.project WHERE Name = '${Name}';`;
        return sql;
    }
    static getProjectTypeIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.projecttype WHERE Name = '${Name}';`;
        return sql;
    }
    static getPhaseIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.phase WHERE Name = '${Name}';`;
        return sql;
    }
    static getMilestoneIDByName(Name) {
        let sql = `SELECT ID FROM lighthouse.milestone WHERE Name = '${Name}';`;
        return sql;
    }
    static getUserIDByEmail(Email) {
        let sql = `SELECT ID FROM lighthouse.user WHERE Email = '${Email}';`;
        return sql;
    }
    static checkKeywordIDByName(Name) {
        let sql = `SELECT ID, Name FROM lighthouse.keyword WHERE Name = '${Name}';`;
        return sql;
    }
    static addBulkErrorImportSQL(index, row, errorF, rowIndex, columnIndex, errorMessage) {
        let sql = `INSERT INTO lighthouse.bulkimporterrors (ErrorMessage,ErrorField,RowField,ColumnField,Name,Email,ProjectType,ProcessField,Project,Phase,Milestone,Type,ImpactCategory,ImpactLevel,FunctionField,Department,Title,Description,RootCause,Recommendation,Keywords,LifeCycle,IndexID) VALUES \
            ("'${errorMessage}'",'${errorF}','${rowIndex}','${columnIndex}','${row[0]}','${row[1]}','${row[2]}','${row[3]}','${row[4]}','${row[5]}','${row[6]}','${row[7]}','${row[8]}','${row[9]}','${row[10]}','${row[11]}','${row[12]}','${row[13]}','${row[14]}','${row[15]}','${row[16]}','${row[17]}','${index}');`;
        return sql;
    }
    static addBulkImportSQL(fileName, filePath, successLength, errorLengthe, UserID) {

        let sql = `INSERT INTO lighthouse.bulkimport (FileName,TotalEntry,TotalEntryError,FilePath,ImportDate,CreatedBy) VALUES \
            ('${fileName}','${successLength}','${errorLengthe}','${filePath}',now(),'${UserID}');`;
        return sql;
    }
    static mappingBulkImportAndErrorSQL(BulkImportID, BulkImportErrorID) {

        let sql = `INSERT INTO lighthouse.mappingbulkimportbulkimporterror (BulkImportID,BulkImportErrorID) VALUES \
            ('${BulkImportID}','${BulkImportErrorID}');`;
        return sql;
    }
    static getBulkImportErrorData(ID) {
        let sql = `select bie.ErrorMessage,bie.ErrorField,bie.RowField,bie.ColumnField,bie.Name,bie.Email,bie.ProjectType,bie.ProcessField,bie.Project,bie.Phase,bie.Milestone,bie.Type,bie.ImpactCategory,
        bie.ImpactLevel,bie.FunctionField,bie.Department,bie.Title,bie.Description,bie.RootCause,bie.Recommendation,bie.Keywords,bie.LifeCycle
        from lighthouse.bulkimporterrors  bie
        Inner join mappingbulkimportbulkimporterror mbibie on bie.ID =mbibie.BulkImportErrorID where  mbibie.BulkImportID=${ID};`
        return sql;
    }
    static getallbulkSql() {
        let sql = `SELECT bi.ID,bi.FileName,bi.TotalEntry,bi.TotalEntryError,bi.ErrorFileName,bi.FilePath,bi.ErrorFilePath,bi.ImportDate,ur.FirstName,ur.LastName
        FROM lighthouse.bulkimport bi
        INNER JOIN user ur on ur.ID = bi.CreatedBy
        order by bi.ImportDate DESC`
        return sql;
    }
    static updateBulkSQL(ID, fileName, filePath) {

        // console.log(o.ProjectID, "o.ProjectID");
        let sql = `update lighthouse.bulkimport SET ErrorFileName='${fileName}',ErrorFilePath='${filePath}' where ID='${ID}'`;
        return sql;

    }
    static updateAllprocessSQL(i) {
        let sql = `update lighthouse.process SET Indexing='${i.Indexing}' where ID='${i.ID}'`;
        return sql;
    }
    static authUserByEmail(email) {
        let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.Email,ul.IsEnabled,murl.roleid FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid  WHERE ul.Email = "${email}";`
        return sql;
    }
    static getAllUser() {
        let sql = `SELECT ul.ID,ul.FirstName,ul.LastName,ul.EmailNotification,ul.CreatedDate,ul.IsEnabled,ul.Email,murl.roleid, gu.Picture FROM User ul 
        INNER JOIN MappingUserRole murl on ul.ID = murl.userid
        LEFT JOIN googleuser gu on ul.Email = gu.Email;`
        return sql;
    }
    static userRegistration(obj) {
       let sql = `INSERT INTO lighthouse.user (FirstName,LastName,Email,EmailNotification,CreatedBy,CreatedDate,IsEnabled) VALUES \
            ('${obj.FirstName}','${obj.LastName}','${obj.Email}','${obj.EmailNotification}','${obj.UserID}',now(),'${obj.IsEnabled}');`;
        return sql;
    }
    static mappingUserRoles(userID, roleID) {
        let sql = `INSERT INTO lighthouse.mappinguserrole (UserID,RoleID) VALUES \
            ('${userID}','${roleID}');`;
        return sql;
    }
    static googleUser(json, IsEnabled) {

        let sql = `INSERT INTO lighthouse.googleuser (Sub,Name,GivenName,FamilyName,Picture,Email,EmailVerified,Hd, CreatedDate, IsEnabled) VALUES \
            ('${json.sub}','${json.name}','${json.given_name}','${json.family_name}','${json.picture}','${json.email}','${json.email_verified}','${json.hd}',now(),'${IsEnabled}');`;
        return sql;
    }
    static getGoogleUser(email, IsEnabled) {
        let sql = `SELECT gu.ID,gu.Name,gu.Email,gu.Picture FROM googleuser gu
        INNER JOIN user ur on ur.Email = gu.Email
        where gu.Email = '${email}' and gu.IsEnabled = '${IsEnabled}';`;
        return sql;
    }
    static userAccountSettings(obj) {
        let sql = `UPDATE lighthouse.user
        SET FirstName='${obj.SettFirstName}',LastName='${obj.SettLastName}',UpdatedBy='${obj.UserID}',EmailNotification='${obj.Notifications}', UpdatedDate=now(), IsEnabled='${obj.Status}'
        WHERE ID='${obj.SettingUserID}';`;
        return sql;
    }
    static mappingUserRolesAccountSettings(obj) {
        console.log(obj.SettRoles);
        console.log(obj.SettingUserID);
        let sql = `UPDATE lighthouse.mappinguserrole
        SET RoleID='${obj.SettRoles}'
        WHERE UserID='${obj.SettingUserID}';`;
        return sql;
    }
    static deleteUserSQL(ID) {
        let sql = `DELETE from lighthouse.user where ID=${ID}`;
        return sql;
    }
    static deleteMappingUserRolesSQL(ID) {
        let sql = `DELETE from lighthouse.mappinguserrole where UserID=${ID}`;
        return sql;
    }
    static getAllPendingUser() {
        let sql = `SELECT ID, Name, GivenName, FamilyName, Picture, Email, CreatedDate  FROM lighthouse.googleuser WHERE IsEnabled = 0 order by CreatedDate DESC;`;
        return sql;
    }
    static getPendingUserByID(ID) {
        let sql = `SELECT ID, Name, GivenName, FamilyName, Picture, Email, CreatedDate  FROM lighthouse.googleuser WHERE ID = ${ID};`;
        return sql;
    }
    static updateGoogleUser(obj) {
        let sql = `UPDATE lighthouse.googleuser SET IsEnabled='${obj.IsEnabled}' WHERE Email='${obj.Email}';`;
        return sql;
    }
    static getUserByID(ID) {
        let sql = `SELECT Email  FROM lighthouse.user WHERE ID = ${ID};`;
        return sql;

    }
    static deleteGoogleUser(Email) {
        let sql = `DELETE from lighthouse.googleuser where Email =  '${Email}';`;
        return sql;
    }
    static pendingUserDelete(ID) {
        let sql = `DELETE from lighthouse.googleuser where ID =  '${ID}';`;
        return sql;
    }
    static getGoogleUserBYEmail(email, IsEnabled) {
        let sql = `SELECT ID,Name,Email,Picture FROM googleuser 
        where Email = '${email}' and IsEnabled = '${IsEnabled}';`;
        return sql;
    }
    static getcountlessonbymonth(){
        let sql =`SELECT count(ID) as lastthreemonth,(select count(ID) 
        FROM lighthouse.lesson
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -1 MONTH)) as currentmonth ,(select count(ID) 
        FROM lighthouse.lesson
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -5 MONTH)) as lastfivemonth,(select count(ID) 
        FROM lighthouse.lesson
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -10 MONTH)) as lasttenmonth
        FROM lighthouse.lesson 
        WHERE CreatedDate >=DATE_ADD(NOW(), INTERVAL -3 MONTH)`
        return sql; 
     }
		 static getUserEmailForNotification(){
        let sql = `SELECT Email FROM lighthouse.user WHERE EmailNotification = 1;`;
        return sql; 
     }
     static updateAvatarImage(email, picture, isEnabled){
        let sql = `UPDATE lighthouse.googleuser SET Picture='${picture}' WHERE Email='${email}' and IsEnabled='${isEnabled}';`;
        return sql;
     }								  
}
module.exports = User;