var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/functions  
// router.get("/", middleware.checkToken, (req, res, next) =>{
router.get("/", (req, res, next) => {
    // console.log(Model.getAllKeywordsSQL());
    db.query(Model.getAllFunctionsSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "All Function get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Function not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/functions/add
router.post('/add', function (req, res) {
    var f = {};
    // d.ID=req.body.ID;
    f.Name = req.body.Name.replace(/'/g, "\\'")
    if(req.body.Description){
        f.Description = req.body.Description.replace(/'/g, "\\'")
    }else{
        f.Description = ''
    }
    f.CreatedBy = req.body.CreatedBy;
    f.UpdatedBy = req.body.UpdatedBy;
    //console.log(f)
    //console.log(db.query(Model.addalldepartmentsSQL(d)))
    db.query(Model.AddAllfunctionsSQL(f), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "functions added successfully.",
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

//http://localhost:6001/api/functions/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllfunctionsSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/functions/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name.replace(/'/g, "\\'")


    //console.log(p);
    db.query(Model.updatefunctionSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/functions/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getfunctionsbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get functions by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get functions by ID.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/functions/functionschart
router.get("/functionschart", (req, res, next) => {
    db.query(Model.getfunctionsByUserPieChartSQL(), (err, result) => {
        console.log("getfunctionsByUserPieChartSQL+++++++", result);
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].functions);
                }
                res.status(200).json({
                    status: true,
                    message: "functions get successfully.",
                    data: dataObj,
                    label: labelObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "functions not added.",
                    data: dataObj,
                    label: labelObj
                });
            }
        }
    });
});
module.exports = router; 