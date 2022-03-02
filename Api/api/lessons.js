var express = require("express");
var db = require("../db/database");
var Model = require("../domain/model");
var multer = require('multer');
var path = require('path')
var MulterAzureStorage = require('multer-azure-storage');
var readXlsxFile = require("read-excel-file/node");
var excel = require('excel4node');
const lighthouseJson = require('../json/lighthouse');
var storage = new MulterAzureStorage({
    azureStorageConnectionString: lighthouseJson.azureStorageConnectionString,
    containerName: lighthouseJson.containerName,
    containerSecurity: 'blob',
    fileName: function (file) {
        //  console.log(file);
        return file.mimetype + '/' + Date.now() + '_' + file.originalname;
    }
});
var storageCSV = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads')
    },
    filename: function (req, file, cb) {
        cb(null, file.originalname.split(".").slice(0, -1).join('.') + "_" + Date.now() + path.extname(file.originalname)) //Appending extension
    }
});
var upload = multer({ storage: storage });
var uploadCSV = multer({ storage: storageCSV });
const fs = require("fs");
const router = express.Router();

// get all lessons url-http://localhost:6001/api/lessons/project
router.get("/project", (req, res, next) => {
    db.query(Model.getAllLessonProjectSQL(), (err, result) => {
        let data = result[0];
        console.log(data);
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lesson not added.",
                    result: data
                });
            }
        }
    });
});
// get all lessons url-http://localhost:6001/api/lessons/process
router.get("/process", (req, res, next) => {
    db.query(Model.getAllLessonProcessSQL(), (err, result) => {
        let data = result[0];
        console.log(data);
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lesson not added.",
                    result: data
                });
            }
        }
    });
});
router.post("/add", (req, res, next) => {
    console.log("+++++++", req.body);
    // var rCause = req.body.RootCause;
    // var rootCause = rCause.replace(/'/g, "\\'")
    // console.log("+++issueDescription++++",rootCause);
    let o = {};
    o.UserID = req.body.UserID;
    o.LessonTypeID = req.body.LessonTypeID;
    o.ProjectTypeID = req.body.ProjectTypeID;
    o.ProjectID = req.body.ProjectID;
    o.ProcessID = req.body.ProcessID;
    o.PhaseID = req.body.PhaseID;
    o.TypeID = req.body.TypeID;
    o.ImpactCategoryID = req.body.ImpactCategoryID;
    o.ImpactLevelID = req.body.ImpactLevelID;
    o.MilestoneID = req.body.MilestoneID;
    o.FunctionID = req.body.FunctionID;
    o.LifeCycleID = req.body.LifeCycleID;
    o.DepartmentID = req.body.DepartmentID;
    o.Title = req.body.Title.replace(/'/g, "\\'");
    o.IssueDescription = req.body.IssueDescription.replace(/'/g, "\\'");
    if (req.body.TypeID == "1") {
        o.RootCause = req.body.RootCause.replace(/'/g, "\\'");
    } else {
        o.RootCause = "undefined";
    }
    o.Recommendation = req.body.Recommendation.replace(/'/g, "\\'");
    o.CreatedBy = req.body.CreatedBy;
    o.IsEnabled = req.body.IsEnabled;
    var results = saveData(o, res, req.body.Keywords);
    results.then(function (result) {
        res.status(200).json({
            status: true,
            message: "Lesson added successfully.",
            result: result
        });

    });
});
async function saveData(o, res, keywords) {
    return new Promise((resolve, reject) => {
        db.query(Model.addLessonSQL(o), (err, result) => {
            let data = result[1][0];
            if (!err) {
                addKeywords(data.insertId, keywords);
                return err ? reject(err) : resolve(data);
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lesson not added successfully.",
                    result: err
                });
            }
        });
    });
}
async function addKeywords(lessonID, keywords) {
    return new Promise((resolve, reject) => {
        keywords.forEach((keyword, index) => {
            if (keyword.ID) {
                db.query(Model.addKeywordsByMappingLessonSQL(lessonID, keyword.ID), (err, result) => {
                    //   let data = result[1][0];
                    console.log("if+++++++keywordResultsResult+++++++keywordResultsResult++++id+data", result);
                });
            } else {
                db.query(Model.addKeywordsBySQL(keyword.display), (err, keywordResultsResult) => {
                    let keywordResults = keywordResultsResult[1][0];

                    if (!err) {
                        if (keywordResults.insertId) {
                            db.query(Model.addKeywordsByMappingLessonSQL(lessonID, keywordResults.insertId), (err, mappingResults) => {
                                //   let data = mappingResults[1][0];
                                console.log("else+++++++keywordResultsResult+++++++keywordResultsResult++++id+data", mappingResults);
                            });
                        }
                    }
                });
            }
            if (index == keywords.length - 1) {
                return resolve();
            }
        });
    });
}
router.post("/filterLesson", (req, res, next) => {
    db.query(Model.getLessonsByFilterSQL(req.body), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lessons not added.",
                    result: data
                });
            }
        }
    });
});
router.post('/delete', function (req, res) {
    var ID = req.body.ID;
    db.query(Model.deletelessonsSQL(ID), (err, results, data) => {
        if (err) {
            // console.log(err)
            res.send({ status: false, result: results, message: 'not-deleted' });
        } else {
            return res.send({ status: true, data: results, message: 'deleted' });
        }
    })
});
router.post('/update', function (req, res) {
    var o = {};
    console.log(req.body.keywords);
    o.ID = req.body.ID;
    o.UserID = req.body.UserID;
    o.LessonTypeID = req.body.LessonTypeID;
    o.ProjectTypeID = req.body.ProjectTypeID;
    o.ProjectID = req.body.ProjectID;
    o.ProcessID = req.body.ProcessID;
    o.PhaseID = req.body.PhaseID;
    o.TypeID = req.body.TypeID;
    o.ImpactCategoryID = req.body.ImpactCategoryID;
    o.ImpactLevelID = req.body.ImpactLevelID;
    o.MilestoneID = req.body.MilestoneID;
    o.FunctionID = req.body.FunctionID;
    o.LifeCycleID = req.body.LifeCycleID;
    o.DepartmentID = req.body.DepartmentID;
    o.Title = req.body.Title.replace(/'/g, "\\'")
    o.IssueDescription = req.body.IssueDescription.replace(/'/g, "\\'")
    if (req.body.TypeID == "1") {
        o.RootCause = req.body.RootCause.replace(/'/g, "\\'")
    } else {
        o.RootCause = "undefined";
    }
    o.Recommendation = req.body.Recommendation.replace(/'/g, "\\'")
    o.UpdatedBy = req.body.UpdatedBy;
    o.IsEnabled = req.body.IsEnabled;

    db.query(Model.updatelessonSQL(o), (err, data) => {
        if (err) {
            res.send({ status: false, result: data, message: 'not-updated' });
        } else {
            updateKeywords(req.body.ID, req.body.keywords);
            return res.send({ status: true, result: data, message: 'Updated' });
        }

    });
});
async function updateKeywords(lessonID, keywords) {
    return new Promise((resolve, reject) => {
        db.query(Model.deleteAllKeywordsByID(lessonID), (err, deleteResults) => {
            keywords.forEach((keyword, index) => {
                if (keyword.ID) {
                    db.query(Model.addKeywordsByMappingLessonSQL(lessonID, keyword.ID), (err, result) => {
                        //   let data = result[1][0];
                        console.log("if+++++++keywordResultsResult+++++++keywordResultsResult++++id+data", result);
                    });
                } else {
                    db.query(Model.addKeywordsBySQL(keyword.Name), (err, keywordResultsResult) => {
                        let keywordResults = keywordResultsResult[1][0];

                        if (!err) {
                            if (keywordResults.insertId) {
                                db.query(Model.addKeywordsByMappingLessonSQL(lessonID, keywordResults.insertId), (err, mappingResults) => {
                                    //   let data = mappingResults[1][0];
                                    console.log("else+++++++keywordResultsResult+++++++keywordResultsResult++++id+data", mappingResults);
                                });
                            }
                        }
                    });
                }
                if (index == keywords.length - 1) {
                    return resolve();
                }
            });
        });

    });
}
//http://localhost:6001/api/lessons/porject/id
router.post("/porject/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getlessonProject(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get Lessons by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get Lessons by ID.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/lessons/process/id
router.post("/process/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getlessonProcess(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get Lessons by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get Lessons by ID.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/lessons/project/filter
router.post('/project/filter', function (req, res) {
    var d = {};
    db.query(Model.FilterAllLessonssSQL(req.body), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lessons not added.",
                    result: data
                });
            }
        }
    })
});
router.post('/process/filter', function (req, res) {
    var d = {};
    db.query(Model.FilterAllLessonssProcessSQL(req.body), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lessons not added.",
                    result: data
                });
            }
        }
    })
});

//http://localhost:6001/api/lessons/attachment
router.post('/attachment', upload.single('attachment'), (req, res) => {
    console.log(req.file);
    try {
        //res.send(req.file);
        db.query(Model.AddAllAttachmentSQL(req.file), (err, result) => {
            let data = result[1][0];
            if (err) {
                res.send({ status: false, data: data, message: 'not-updated' });
            } else {
                return res.send({ status: true, data: data, message: 'Updated' });
            }
        });
    } catch (err) {
        res.send(400);
    }
});
//http://localhost:6001/api/lessons/mappingattachment
router.post('/mappingattachment', (req, res) => {
    console.log(req.body);
    try {
        //res.send(req.file);
        db.query(Model.AddMappingLessonAttachmentSQL(req.body), (err, result) => {
            let data = result[1][0];
            if (err) {
                res.send({ status: false, data: data, message: 'not-updated' });
            } else {
                return res.send({ status: true, data: data, message: 'Updated' });
            }
        });
    } catch (err) {
        res.send(400);
    }
});
//http://localhost:6001/api/lessons/getattachment
router.post('/getattachment', (req, res) => {
    console.log(req.body);
    try {
        //res.send(req.file);
        db.query(Model.getLessonAttachmentSQL(req.body.ID), (err, result) => {
            let data = result[0];
            if (!err) {
                if (data && data.length > 0) {
                    res.status(200).json({
                        status: true,
                        message: "Successfully get attachment by ID.",
                        result: data
                    });
                } else {
                    res.status(200).json({
                        status: false,
                        message: "Not get attachment by ID.",
                        result: data
                    });
                }
            }
        });
    } catch (err) {
        res.send(400);
    }
});
//http://localhost:6001/api/lessons/deleteattachment
router.post('/deleteattachment', function (req, res) {
    var ID = req.body.ID;
    db.query(Model.deleteAttachmnetSQL(ID), (err, results) => {
        if (err) {
            // console.log(err)
            res.send({ status: false, data: results, message: 'not-deleted' });
        } else {
            return res.send({ status: true, data: results, message: 'deleted' });
        }
    })
})
//free-search text
router.post("/freesearch", (req, res, next) => {
    // let d={};
    let data = req.body.data;
    // d.ProjectName =req.body.ProjectName;
    // d.Phase =req.body.Phase;
    // d.Projecttype=req.body.Projecttype;
    // d.Milestone = req.body.Milestone;
    // d.Impactlevel = req.body.Impactlevel;
    // d.Impactcategory =req.body.Impactcategory; 
    db.query(Model.getfreesearchByFilterSQL(data), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lessons not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/lessons/type
//type of lesson
router.get("/type", (req, res, next) => {
    db.query(Model.getalltypeoflessonSql(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "alltypeoflesson get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "alltypeoflesson not added.",
                    result: data
                });
            }
        }
    });
});

//http://localhost:6001/api/lessons/keywords/id
router.post("/keywords/id", (req, res, next) => {
    var ID = req.body.ID;
    db.query(Model.getAllKeywordsByID(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "keywords get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "keywords not get successfully.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/lessons/attachment/lessonid
router.post('/attachment/lessonid', function (req, res) {
    var d = {};
    db.query(Model.getAttachmentNameByID(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Attachment get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Attachment not get.",
                    result: data
                });
            }
        }
    })
});
var successRow = [];
var errorcell = [];
alreadyExecuted = false;
alreadyLoopEx = false;
var totalRows = [];
var lessonIDs = [];
var lessonIdDelete = [];
var i = 0;
//http://localhost:6001/api/lessons/bulkupload
router.post('/bulkupload', uploadCSV.single('bulkcsv'), (req, res) => {
    let fileName = req.file.filename;
    let UserID = req.body.UserID;
    let filePath = req.file.path;
    alreadyExecuted = false;
    alreadyLoopEx = false;
    successRow = [];
    errorcell = [];
    lessonIDs = [];
    lessonIdDelete = [];
    i = 0;
    //  console.log("**********************",req.body.UserID);
    readXlsxFile(filePath).then((rows) => {
        var o = {};
        rows.shift();
        totalRows.push(rows.length);
        rows.forEach((row, index) => {
            let rowdata = row;
            // Title = row[12],
            //     IssueDescription = row[13],
            //     RootCause = row[14],
            //     Recommendation = row[15],
            //     Type = row[7],
            Title = row[10],
                Type = row[11],
                IssueDescription = row[12],
                RootCause = row[13],
                Recommendation = row[14],
                o.IsEnabled = 1;
            if (Title) {
                o.Title = Title;
            }
            if (IssueDescription) {
                o.IssueDescription = IssueDescription.replace(/'/g, "\\'")
            }
            if (Recommendation) {
                o.Recommendation = Recommendation.replace(/'/g, "\\'")
            }
            if (Type == "Issue") {
                o.RootCause = RootCause.replace(/'/g, "\\'")
            } else {
                o.RootCause = "undefined";
            }

            db.query(Model.addLessonSQLBulk(o), (err, result) => {
                if (!err) {
                    let data = result[1][0];
                    LessonID = data.insertId;
                    lessonIDs.push(LessonID)
                    let l = {};
                    l.UserID = UserID;
                    l.LessonID = LessonID;
                    l.Description = ''
                    l.flag = 0;
                    console.log(l);
                    //console.log(db.query(User.AddUserusefullessonsSQL(l)));
                    db.query(Model.AddUserusefullessonsSQL(l), (err, result) => { });
                    var results = addLessonByExcle(LessonID, rowdata, index, res);
                    results.then(function (result) {
                        let uniquelessonIdDelete = [...new Set(lessonIdDelete)].filter(n => n);
                        console.log("+++++++++++9999999999++++++++++++++++999999999999999999++++++++", uniquelessonIdDelete);
                        if (uniquelessonIdDelete.length) {
                            console.log("+++++++++++++++++++++++++++999999999999999999++++++++", uniquelessonIdDelete);
                            uniquelessonIdDelete.forEach((deID) => {
                                db.query(Model.deletelessonsSQL(deID), (deerr, dedata) => {
                                    console.log("========Delete===============", dedata);
                                });
                            });
                        }
                        if (i === rows.length - 1) {
                            const frontICPath = filePath.replace(/\\/g, "\\\\");
                            db.query(Model.addBulkImportSQL(fileName, frontICPath, successRow.length, errorcell.length, UserID), (err, resultBulk) => {
                                let data = resultBulk[1][0];
                                if (!err) {
                                    errorcell.forEach((errcell) => {
                                        db.query(Model.mappingBulkImportAndErrorSQL(data.insertId, errcell.errorID), (err, result) => {
                                            let data = result[1][0];

                                        });
                                    });
                                } else {

                                    console.log("UnhandledPromiseRejectionWarning: ReferenceError: ModelID is not defined +++++++++++++++", err);
                                }
                                responseCount(res, data.insertId, errorcell.length);
                            });
                        }
                        i++
                    });
                }
            });
        });

    });
});

async function addLessonByExcle(LessonID, row, Index, res) {
    var o = {};
    let lessonID = LessonID;
    let index = Index + 1;
    let projectTypeID = null;
    // var Email = row[1],
    //     ProjectType = row[2],
    //     Process = row[3],
    //     Project = row[4],
    //     Phase = row[5],
    //     Milestone = row[6],
    //     Type = row[7],
    //     ImpactCategory = row[8],
    //     ImpactLevel = row[9],
    //     Function = row[10],
    //     Department = row[11],
    //     Keywords = row[16],
    //     LifeCycle = row[17]
    var Email = row[1],
        ProjectType = row[2],
        Project = row[3],
        Phase = row[4],
        Milestone = row[5],
        Process = row[6],
        LifeCycle = row[7],
        Function = row[8],
        Department = row[9],
        Type = row[11],
        Keywords = row[15],
        ImpactCategory = row[16],
        ImpactLevel = row[17]
    var KeywordsArr = Keywords.split(',');
    if (ProjectType) {
        o.LessonTypeID = 1;
        o.ProjectTypeID = await getProjectTypeCallback(ProjectType, lessonID);
        if (!o.ProjectTypeID) {
            let errorMessageProjectType = "Given ProjectType '" + row[2] + "' not exist. Please check once again.";
            var returnValue = await AddBulkImport(Index, row, row[2], 2, index, errorMessageProjectType);
            //   errorrows.push({ key: Index, value: row, error: row[2], rowIndex: 2, columnIndex: index, errorMessage: errorMessageProjectType, cellAddress: cellPosition });
            errorcell.push({ error: row[2], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        } else {
            projectTypeID = o.ProjectTypeID;
        }
        if (Project) {
            o.ProjectID = await getProjectCallback(Project, lessonID);
            if (!o.ProjectID) {
                let errorMessageProject = "Given Project '" + row[3] + "' not exist. Please check once again.";
                var returnValue = await AddBulkImport(Index, row, row[3], 3, index, errorMessageProject);
                //   errorrows.push({ key: Index, value: row, error: row[4], rowIndex: 4, columnIndex: index, errorMessage: errorMessageProject, cellAddress: cellPosition });
                // console.log("----------Project-----------", Project);
                errorcell.push({ error: row[3], errorID: returnValue });
                lessonIdDelete.push(lessonID)
                lessonID = null;
            } else {
                if (projectTypeID) {
                    // console.log(o.ProjectID,"9999999999999999999999999999999555555999999999999999999999999999999999",projectTypeID);
                    let projectMapped = await checkProjectProjecttypeCallback(o.ProjectID, projectTypeID)
                    // console.log("9999999999999999999999999999999999999999999999999999999999999999",projectMapped);
                    if (!projectMapped) {
                        let errorMessageProject = "Given Project '" + row[3] + "' not available  in project type '" + ProjectType + "'. Please check once again.";
                        var returnValue = await AddBulkImport(Index, row, row[3], 3, index, errorMessageProject);
                        //   errorrows.push({ key: Index, value: row, error: row[4], rowIndex: 4, columnIndex: index, errorMessage: errorMessageProject, cellAddress: cellPosition });
                        // console.log("----------Project-----------", Project);
                        errorcell.push({ error: row[3], errorID: returnValue });
                        lessonIdDelete.push(lessonID)
                        lessonID = null;
                    }
                }
            }
        }
        if (Phase) {
            o.PhaseID = await getPhaseCallback(Phase, lessonID);
            if (!o.PhaseID) {
                let errorMessagePhase = "Given Phase '" + row[4] + "' not exist. Please check once again.";
                //   let cellPosition = "row 6  column " + index + 1
                var returnValue = await AddBulkImport(Index, row, row[4], 4, index, errorMessagePhase);
                //   errorrows.push({ key: Index, value: row, error: row[5], rowIndex: 5, columnIndex: index, errorMessage: errorMessagePhase, cellAddress: cellPosition });
                errorcell.push({ error: row[4], errorID: returnValue });
                lessonIdDelete.push(lessonID)
                lessonID = null;
            } else {
                if (projectTypeID) {
                    //console.log(o.ProjectID,"9999999999999999999999999999999555555999999999999999999999999999999999",projectTypeID);
                    let phaseMapped = await checkPhaseProjecttypeCallback(o.PhaseID, projectTypeID)
                    //console.log("9999999999999999999999999999999999999999999999999999999999999999",phaseMapped);
                    if (!phaseMapped) {
                        let errorMessagePhase = "Given Phase '" + row[4] + "' not available in project type '" + ProjectType + "'. Please check once again.";
                        //   let cellPosition = "row 6  column " + index + 1
                        var returnValue = await AddBulkImport(Index, row, row[4], 4, index, errorMessagePhase);
                        //   errorrows.push({ key: Index, value: row, error: row[5], rowIndex: 5, columnIndex: index, errorMessage: errorMessagePhase, cellAddress: cellPosition });
                        errorcell.push({ error: row[4], errorID: returnValue });
                        lessonIdDelete.push(lessonID)
                        lessonID = null;
                    }
                }
            }
        }
        if (Milestone) {
            o.MilestoneID = await getMilestoneCallback(Milestone, lessonID);
            if (!o.MilestoneID) {
                let errorMessageMilestone = "Given Milestone '" + row[5] + "' not exist. Please check once again.";
                //  let cellPosition = "row 7  column " + index + 1
                var returnValue = await AddBulkImport(Index, row, row[5], 5, index, errorMessageMilestone);
                //   errorrows.push({ key: Index, value: row, error: row[6], rowIndex: 6, columnIndex: index, errorMessage: errorMessageMilestone, cellAddress: cellPosition });
                errorcell.push({ error: row[5], errorID: returnValue });
                lessonIdDelete.push(lessonID)
                lessonID = null;
            } else {
                if (projectTypeID) {
                    //console.log(o.ProjectID,"9999999999999999999999999999999555555999999999999999999999999999999999",projectTypeID);
                    let milestoneMapped = await checkMilestoneProjecttypeCallback(o.MilestoneID, projectTypeID)
                    //console.log("9999999999999999999999999999999999999999999999999999999999999999",milestoneMapped);
                    if (!milestoneMapped) {
                        let errorMessageMilestone = "Given Milestone '" + row[5] + "' not available in project type '" + ProjectType + "'. Please check once again.";
                        //  let cellPosition = "row 7  column " + index + 1
                        var returnValue = await AddBulkImport(Index, row, row[5], 5, index, errorMessageMilestone);
                        //   errorrows.push({ key: Index, value: row, error: row[6], rowIndex: 6, columnIndex: index, errorMessage: errorMessageMilestone, cellAddress: cellPosition });
                        errorcell.push({ error: row[5], errorID: returnValue });
                        lessonIdDelete.push(lessonID)
                        lessonID = null;
                    }
                }

            }
        }
    } else if (Process) {
        o.LessonTypeID = 2;
        o.ProcessID = await getProcessCallback(Process, lessonID);
        if (!o.ProcessID) {
            let errorMessageProcess = "Given Process '" + row[6] + "' not exist. Please check once again.";
            // let cellPosition = "row 4  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[6], 6, index, errorMessageProcess);
            //   errorrows.push({ key: Index, value: row, error: row[3], rowIndex: 3, columnIndex: index, errorMessage: errorMessageProcess, cellAddress: cellPosition });
            errorcell.push({ error: row[6], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }
    if (Email) {
        o.UserID = await getEmailCallback(Email, lessonID);
        if (!o.UserID) {
            let errorMessageEmail = "Given Email '" + row[1] + "' not exist. Please check once again.";
            const re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            //  let cellPosition = "row 2  column " + index + 1
            const isEmailValidate = re.test(String(Email).toLowerCase());
            //  console.log("++++++++++++++++++isEmailValidate++++++++++", isEmailValidate);
            if (!isEmailValidate) {
                errorMessageEmail = "Given Email '" + row[1] + "' not validate. Please check once again.";
            }
            var returnValue = await AddBulkImport(Index, row, row[1], 1, index, errorMessageEmail);
            //  errorrows.push({ key: Index, value: row, error: row[1], rowIndex: 1, columnIndex: index, errorMessage: errorMessageEmail, cellAddress: cellPosition });
            errorcell.push({ error: row[1], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
        o.CreatedBy = o.UserID;
    }

    if (Type) {
        o.TypeID = await getTypeCallback(Type, lessonID);
        if (!o.TypeID) {
            let errorMessageType = "Given Type '" + row[11] + "' not exist. Please check once again.";
            //  let cellPosition = "row 8  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[11], 11, index, errorMessageType);
            //  errorrows.push({ key: Index, value: row, error: row[7], rowIndex: 7, columnIndex: index, errorMessage: errorMessageType, cellAddress: cellPosition });
            errorcell.push({ error: row[11], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }

    if (Function) {
        o.FunctionID = await getFunctionCallback(Function, lessonID);
        if (!o.FunctionID) {
            let errorMessageFunction = "Given Function '" + row[8] + "' not exist. Please check once again.";
            //  let cellPosition = "row 11  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[8], 8, index, errorMessageFunction);
            //  errorrows.push({ key: Index, value: row, error: row[10], rowIndex: 10, columnIndex: index, errorMessage: errorMessageFunction, cellAddress: cellPosition });
            errorcell.push({ error: row[8], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }

    if (ImpactLevel) {
        o.ImpactLevelID = await getImpactLevelCallback(ImpactLevel, lessonID);
        if (!o.ImpactLevelID) {
            let errorMessageImpactLevel = "Given ImpactLevel '" + row[17] + "' not exist. Please check once again.";
            //   let cellPosition = "row 10  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[17], 17, index, errorMessageImpactLevel);
            //   errorrows.push({ key: Index, value: row, error: row[9], rowIndex: 9, columnIndex: index, errorMessage: errorMessageImpactLevel, cellAddress: cellPosition });
            errorcell.push({ error: row[17], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }

    if (ImpactCategory) {
        o.ImpactCategoryID = await getImpactCategoryCallback(ImpactCategory, lessonID);
        if (!o.ImpactCategoryID) {
            let errorMessageImpactCategory = "Given ImpactCategory '" + row[16] + "' not exist. Please check once again.";
            //  let cellPosition = "row 9  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[16], 16, index, errorMessageImpactCategory);
            //  errorrows.push({ key: Index, value: row, error: row[8], rowIndex: 8, columnIndex: index, errorMessage: errorMessageImpactCategory, cellAddress: cellPosition });
            errorcell.push({ error: row[16], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }

    if (Department) {
        o.DepartmentID = await getDepartmentCallback(Department, lessonID);
        if (!o.DepartmentID) {
            let errorMessageDepartment = "Given Department '" + row[9] + "' not exist. Please check once again.";
            //  let cellPosition = "row 12  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[9], 9, index, errorMessageDepartment);
            //  errorrows.push({ key: Index, value: row, error: row[11], rowIndex: 11, columnIndex: index, errorMessage: errorMessageDepartment, cellAddress: cellPosition });
            errorcell.push({ error: row[9], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }

    if (LifeCycle) {
        o.LifeCycleID = await getLifeCycleCallback(LifeCycle, lessonID);
        if (!o.LifeCycleID) {
            let errorMessageLifeCycle = "Given LifeCycle '" + row[7] + "' not exist. Please check once again.";
            //  let cellPosition = "row 12  column " + index + 1
            var returnValue = await AddBulkImport(Index, row, row[7], 7, index, errorMessageLifeCycle);
            //  errorrows.push({ key: Index, value: row, error: row[11], rowIndex: 11, columnIndex: index, errorMessage: errorMessageDepartment, cellAddress: cellPosition });
            errorcell.push({ error: row[7], errorID: returnValue });
            lessonIdDelete.push(lessonID)
            lessonID = null;
        }
    }

    if (lessonID) {
        await addKeywordsInBulk(KeywordsArr, LessonID);
        var finalResults = await updateDataBulk(lessonID, o, res);
        successRow.push(finalResults);
    }
    return successRow;
}
function responseCount(res, importID, errorCount) {
    let resp = { importID, errorCount };
    res.status(200).json({
        status: true,
        message: "Successfully get attachment by ID.",
        result: resp
    });
}
async function AddBulkImport(index, row, errorF, rowIndex, columnIndex, errorMessage) {
    const finalResults = await new Promise((resolve, reject) => {
        db.query(Model.addBulkErrorImportSQL(index, row, errorF, rowIndex, columnIndex, errorMessage), (err, result) => {
            if (err) {

                console.log("Cannot read property '1' of undefined +++++++++++", err);
            } else {
                let data = result[1][0];
                resolve(data.insertId);
            }

        });

    });
    return finalResults;
}
async function updateDataBulk(lessonID, o, res) {
    const finalResults = await new Promise((resolve, reject) => {
        db.query(Model.updateLessonBybulk(lessonID, o), (err, data) => {
            if (!err) {
                resolve(data);
            } else {
                console.log("Cannot read property '22222' of undefined +++++++++++", err);
                db.query(Model.deleteMultiLessons(lessonIDs), (err, data) => {
                    console.log("Cannot rened +++++++++err++", err);
                    console.log("Cannot rened +++++++++data++", data);
                    res.status(200).json({
                        status: false,
                        message: "Deleted lesson",
                        result: lessonIDs
                    });
                });
            }
        });
    });
    return finalResults;
}
function addKeywordsInBulk(KeywordsArr, LessonID) {
    KeywordsArr.forEach(key => {
        db.query(Model.checkKeywordIDByName(key), (keyerr, keydataResult) => {
            let keydata = keydataResult[0];
            if (!keyerr) {
                if (keydata.length) {
                    db.query(Model.addKeywordsByMappingLessonSQL(LessonID, keydata[0].ID), (err, results) => {
                        let data = results[1][0];
                    });
                } else {
                    db.query(Model.addKeywordsBySQL(key), (err, keywordResultsResult) => {
                        let keywordResults = keywordResultsResult[1][0];
                        if (keywordResults.insertId) {
                            db.query(Model.addKeywordsByMappingLessonSQL(LessonID, keywordResults.insertId), (err, mappingResults) => {
                                let data = mappingResults[1][0];
                            });
                        }
                    });
                }
            }
        });
    });
}
function getProjectCallback(Project, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getProjectIDByName(Project), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     console.log("========Delete===============", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}


function checkProjectProjecttypeCallback(ProjectId, projecttypeid) {
    return new Promise((resolve, reject) => {
        db.query(Model.checkMappingProjectProjectType(ProjectId, projecttypeid), (err, result) => {
            let data = result[0];

            if (data.length > 0) {
                console.log("++++++++++checkProjectProjecttypeCallback+++++++++", data);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     console.log("========Delete===============", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}

function getProjectTypeCallback(ProjectType, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getProjectTypeIDByName(ProjectType), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getPhaseCallback(Phase, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getPhaseIDByName(Phase), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}

function checkPhaseProjecttypeCallback(PhaseId, projecttypeid) {
    return new Promise((resolve, reject) => {
        db.query(Model.checkPhaseProjecttypeCallback(PhaseId, projecttypeid), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}



function getMilestoneCallback(Milestone, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getMilestoneIDByName(Milestone), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}

function checkMilestoneProjecttypeCallback(MilestoneId, projecttypeid) {
    return new Promise((resolve, reject) => {
        db.query(Model.checkMilestoneProjecttypeCallback(MilestoneId, projecttypeid), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}


function getProcessCallback(Process, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getProcessIDByName(Process), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getTypeCallback(Type, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getTypeIDByName(Type), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });

}
function getImpactCategoryCallback(ImpactCategory, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getImpactCategoryIDByName(ImpactCategory), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getImpactLevelCallback(ImpactLevel, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getImpactLevelIDByName(ImpactLevel), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getFunctionCallback(Function, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getFunctionIDByName(Function), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getDepartmentCallback(Department, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getDepartmentIDByName(Department), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getLifeCycleCallback(LifeCycle, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getLifeCycleIDByName(LifeCycle), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                // db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                //     //console.log("Delete", data);
                // });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
function getEmailCallback(Email, lessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getUserIDByEmail(Email), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                //console.log(err);
                return err ? reject(err) : resolve(data[0].ID);
            } else {
                db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
                    //console.log("Delete", data);
                });
                return err ? reject(err) : resolve(null);
            }
        });
    });
}
//http://localhost:6001/api/lessons/errorexcel
router.post('/errorexcel', (req, res, next) => {
    let workbook = new excel.Workbook();
    let worksheet = workbook.addWorksheet("Tutorials");
    var headerStyle = workbook.createStyle({
        font: {
            size: 12,
            bold: true
        }
    });
    var ID = req.body.ID;
    worksheet.cell(1, 1).string("Error Message").style(headerStyle);
    worksheet.cell(1, 2).string("#Row").style(headerStyle);
    worksheet.cell(1, 3).string("#Column").style(headerStyle);
    worksheet.cell(1, 4).string("Name").style(headerStyle);
    worksheet.cell(1, 5).string("Email").style(headerStyle);
    worksheet.cell(1, 6).string("ProjectType").style(headerStyle);
    worksheet.cell(1, 7).string("Project").style(headerStyle);
    worksheet.cell(1, 8).string("Phase").style(headerStyle);
    worksheet.cell(1, 9).string("Milestone").style(headerStyle);
    worksheet.cell(1, 10).string("Process").style(headerStyle);
    worksheet.cell(1, 11).string("LifeCycle").style(headerStyle);
    worksheet.cell(1, 12).string("Function").style(headerStyle);
    worksheet.cell(1, 13).string("Department").style(headerStyle);
    worksheet.cell(1, 14).string("Title").style(headerStyle);
    worksheet.cell(1, 15).string("Type").style(headerStyle);
    worksheet.cell(1, 16).string("Description").style(headerStyle);
    worksheet.cell(1, 17).string("RootCause").style(headerStyle);
    worksheet.cell(1, 18).string("Recommendation").style(headerStyle);
    worksheet.cell(1, 19).string("Keywords").style(headerStyle);
    worksheet.cell(1, 20).string("ImpactCategory").style(headerStyle);
    worksheet.cell(1, 21).string("ImpactLevel").style(headerStyle);

    var results = addDataOnExcle(ID, worksheet, workbook);
    results.then(function (result) {
        const fileName = `error_${Date.now().toString()}.xlsx`;
        const filePath = 'uploads/' + fileName;
        const frontICPath = filePath.replace(/\\/g, "\\\\");
        workbook.write(filePath);
        db.query(Model.updateBulkSQL(ID, fileName, frontICPath), (err, data) => {
            if (!err) {
                let result = { dataOnResult: data, filePath: frontICPath, ID: ID };
                res.status(200).json({
                    status: true,
                    message: "bulk update successfully.",
                    result: result
                });
            }
        });
    });
});
async function addDataOnExcle(ID, worksheet, workbook) {
    var style = workbook.createStyle({
        font: {
            size: 12
        }
    });
    var errStyle = workbook.createStyle({
        font: {
            color: '#FF0800',
            size: 12
        },
        fill: {
            type: 'pattern',
            patternType: 'solid',
            bgColor: '#FFFF00',
            fgColor: '#FFFF00',
        }
    });
    let cellIndex = 0;
    const finalResults = await new Promise((resolve, reject) => {
        db.query(Model.getBulkImportErrorData(ID), (err, result) => {
            let data = result[0];
            if (data) {
                resolve(data);
            }
            data.forEach((row, index) => {
                cellIndex = index + 2;
                //  console.log("In for loop index", cellIndex);
                worksheet.cell(cellIndex, 1).string(row.ErrorMessage).style(style);
                worksheet.cell(cellIndex, 2).number(row.RowField + 1).style(style);
                worksheet.cell(cellIndex, 3).number(row.ColumnField + 1).style(style);
                worksheet.cell(cellIndex, 4).string(row.Name).style(style);
                if (row.Email == row.ErrorField) {
                    worksheet.cell(cellIndex, 5).string(row.Email).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 5).string(row.Email).style(style);
                }
                if (row.ProjectType != "null") {
                    if (row.ProjectType == row.ErrorField) {
                        worksheet.cell(cellIndex, 6).string(row.ProjectType).style(errStyle);
                    } else {
                        worksheet.cell(cellIndex, 6).string(row.ProjectType).style(style);
                    }
                } else {
                    worksheet.cell(cellIndex, 6).string().style(style);
                }
                console.log("++++++++++++++++++++++++++++++++++++++", row.Project);
                if (row.Project != "null") {
                    if (row.Project == row.ErrorField) {
                        worksheet.cell(cellIndex, 7).string(row.Project).style(errStyle);
                    } else {
                        worksheet.cell(cellIndex, 7).string(row.Project).style(style);
                    }
                } else {
                    worksheet.cell(cellIndex, 7).string().style(style);
                }
                if (row.Phase != "null") {
                    if (row.Phase == row.ErrorField) {
                        worksheet.cell(cellIndex, 8).string(row.Phase).style(errStyle);
                    } else {
                        worksheet.cell(cellIndex, 8).string(row.Phase).style(style);
                    }
                } else {
                    worksheet.cell(cellIndex, 8).string().style(style);
                }
                if (row.Milestone != "null") {
                    if (row.Milestone == row.ErrorField) {
                        worksheet.cell(cellIndex, 9).string(row.Milestone).style(errStyle);
                    } else {
                        worksheet.cell(cellIndex, 9).string(row.Milestone).style(style);
                    }
                } else {
                    worksheet.cell(cellIndex, 9).string().style(style);
                }
                if (row.ProcessField != "null") {
                    if (row.ProcessField == row.ErrorField) {
                        worksheet.cell(cellIndex, 10).string(row.ProcessField).style(errStyle);
                    } else {
                        worksheet.cell(cellIndex, 10).string(row.ProcessField).style(style);
                    }
                } else {
                    worksheet.cell(cellIndex, 10).string().style(style);
                }
                //  worksheet.cell(cellIndex, 10).string("++++++++++").style(style);
                if (row.LifeCycle == row.ErrorField) {
                    worksheet.cell(cellIndex, 11).string(row.LifeCycle).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 11).string(row.LifeCycle).style(style);
                }
                if (row.FunctionField == row.ErrorField) {
                    worksheet.cell(cellIndex, 12).string(row.FunctionField).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 12).string(row.FunctionField).style(style);
                }
                if (row.Department == row.ErrorField) {
                    worksheet.cell(cellIndex, 13).string(row.Department).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 13).string(row.Department).style(style);
                }
                if (row.Title == row.ErrorField) {
                    worksheet.cell(cellIndex, 14).string(row.Title).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 14).string(row.Title).style(style);
                }
                if (row.Type == row.ErrorField) {
                    worksheet.cell(cellIndex, 15).string(row.Type).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 15).string(row.Type).style(style);
                }
                if (row.Description == row.ErrorField) {
                    worksheet.cell(cellIndex, 16).string(row.Description).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 16).string(row.Description).style(style);
                }
                if (row.Type == "Best Practise") {
                    worksheet.cell(cellIndex, 17).string().style(style);
                } else {
                    worksheet.cell(cellIndex, 17).string(row.RootCause).style(style);
                }
                if (row.Recommendation == row.ErrorField) {
                    worksheet.cell(cellIndex, 18).string(row.Recommendation).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 18).string(row.Recommendation).style(style);
                }
                if (row.Keywords == row.ErrorField) {
                    worksheet.cell(cellIndex, 19).string(row.Keywords).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 19).string(row.Keywords).style(style);
                }
                if (row.ImpactCategory == row.ErrorField) {
                    worksheet.cell(cellIndex, 20).string(row.ImpactCategory).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 20).string(row.ImpactCategory).style(style);
                }
                if (row.ImpactLevel == row.ErrorField) {
                    worksheet.cell(cellIndex, 21).string(row.ImpactLevel).style(errStyle);
                } else {
                    worksheet.cell(cellIndex, 21).string(row.ImpactLevel).style(style);
                }

            });
        });
    });
    return finalResults;
}
//http://localhost:6001/api/lessons/bulk
router.get("/bulk", (req, res, next) => {
    db.query(Model.getallbulkSql(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "bulk get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "bulk not added.",
                    result: data
                });
            }
        }
    });

});
// pie chart lesson type (issue or best practice)
//http://localhost:6001/api/lessons/typepiechart
router.get("/typepiechart", (req, res, next) => {
    db.query(Model.gettypeBypiechartSQL(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].typ);
                    totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "type get successfully.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "type not added.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            }
        }
    });
});
// percentage circular
// // id =1 ->project and id =2 ->process
//http://localhost:6001/api/lessons/countlessontype
router.post("/countlessontype", (req, res, next) => {
    let id = req.body.id;
    db.query(Model.getcountlessontype(id), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Total number of project/process get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "project/process not added.",
                    result: data
                });
            }
        }
    });
});
// // id =1 ->issue and id =2 ->bestpractice
//http://localhost:6001/api/lessons/counttype
router.post("/counttype", (req, res, next) => {
    let id = req.body.id;

    db.query(Model.getcounttype(id), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Total number of issue/bestpractice get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "issue/bestpractice not added.",
                    result: data
                });
            }
        }
    });
});

//http://localhost:6001/api/lessons/monthdata
router.get("/monthdata", (req, res, next) => {
    db.query(Model.getcountlessonbymonth(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully by Month.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lessons get successfully by Month.",
                    result: data
                });
            }
        }
    });
});

module.exports = router;