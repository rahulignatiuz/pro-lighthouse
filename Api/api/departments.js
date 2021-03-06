var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");


//http://localhost:6001/api/departments  
// router.get("/", middleware.checkToken, (req, res, next) =>{
router.get("/", (req, res, next) => {
    // console.log(Model.getAllKeywordsSQL());
    db.query(Model.getAllDepartmentsSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "departments get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "departments not added.",
                    result: data
                });
            }
        }
    });
});
// //http://localhost:6001/api/departments/add
router.post('/add', function (req, res) {
    var d = {};
    // d.ID=req.body.ID;
    d.Name = req.body.Name.replace(/'/g, "\\'")
    if(req.body.Description){
        d.Description = req.body.Description.replace(/'/g, "\\'")
    }else{
        d.Description = ''
    }
    
    d.CreatedBy = req.body.CreatedBy;
    d.UpdatedBy = req.body.UpdatedBy;
    console.log(d)
    //console.log(db.query(Model.addalldepartmentsSQL(d)))
    db.query(Model.AddAllDepartmentsSQL(d), (err, result) => {
        //let results = result[1][0];
       // console.log("----------------+++++++++++++++", results); 
        //console.log("----------------+++++++++++++++", results);   
        // if(results.constructor.name == 'RowDataPacket') { 
        //     console.log("----------------+++++++++++++++", results);          
        // }
        // if (err) {
        //     res.send({ status: false, result: results, message: 'not-added' })
        // }
        // else {
        //     return res.send({ status: true, data: results, message: 'added' });
        // }
        // if (!err) {
        //     console.log("----------------+++++++++++++++", results); 
        //     res.status(200).json({
        //         status: true,
        //         message: "Department added successfully.",
        //         result: results
        //     });
        // } else {
        //     console.log("----------------+++++++++++++++", err, result); 
        //     res.status(200).json({
        //         status: false,
        //         message: "Department not added successfully.",
        //         result: results
        //     });
        // }
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "Department added successfully.",
                result: results
            });
        } else {
            console.log("----------------+++++++++++++++", err.sqlMessage); 
            res.status(200).json({
                status: false,
                message: err.sqlMessage,
                result: err.code
            });
        }
    })
});
//http://localhost:6001/api/departments/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAlldepartmentSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    })

});
//http://localhost:6001/api/departments/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name.replace(/'/g, "\\'")


    //console.log(p);
    db.query(Model.updatedepartmentSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    })

});
//http://localhost:6001/api/departments/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getdepartmentsbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get department by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get department by ID.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/departments/departmentbarchart
router.get("/departmentbarchart", (req, res, next) => {
    db.query(Model.getdepartmentBybarchartSQL(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].deprt);
                    totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "departments get successfully.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "departments not added.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            }
        }
    });
});
//http://localhost:6001/api/departments/departmentbar
router.get("/departmentbar", (req, res, next) => {
    db.query(Model.getdepartmentBybarSQL(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            // let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    // dataObj.push(data[i].total);
                    labelObj.push(data[i].deprt);
                    //totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "departments get successfully.",
                    data: dataObj,
                    label: labelObj,
                    // totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "departments not added.",
                    data: dataObj,
                    label: labelObj,
                    // totallesson: totalObj
                });
            }
        }
    });
});
module.exports = router; 