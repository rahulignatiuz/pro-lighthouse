var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/projects
router.get("/", (req, res, next) => {

    db.query(Model.getAllProjectsSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Projects get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Projects not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/projects/projectgetbyid
router.post('/projectgetbyid', function (req, res) {
    ID = req.body.ID;

    //console.log(db.query(Model.updateProjectsSQL(p)))
    db.query(Model.getprojectbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Projects get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Projects not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/projects/update 
router.post('/update', function (req, res) {
    var p = {};
    p.ID = req.body.ID;
    p.LPN = req.body.LPN;

    console.log(p)
    //console.log(db.query(Model.updateProjectsSQL(p)))
    db.query(Model.updateProjectsSQL(p), (err, results) => {

        if (err) {
            res.send({ status: false, result: results, message: 'not-updated' })
        }
        else {
            return res.send({ status: true, data: results, message: 'updated' });
        }
    });
});
//http://localhost:6001/api/projects/add
router.post('/add', (req, res, next) => {
    let p = {};
    p.Name = req.body.Name.replace(/'/g, "\\'")
    p.LPN = req.body.LPN;
    if(req.body.Description){
        p.Description = req.body.Description.replace(/'/g, "\\'")
    }else{
        p.Description = ''
    }
    p.CreatedBy = req.body.CreatedBy;
    p.UpdatedBy = req.body.UpdatedBy;
    //console.log(d);
    db.query(Model.AddAllProjectsSQL(p), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "Projects added successfully.",
                data: results
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
//http://localhost:6001/api/projects/updateindex
router.post('/updateindex', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;
    //console.log(p);
    db.query(Model.updateAllprojectsSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/projects/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name.replace(/'/g, "\\'")


    //console.log(p);
    db.query(Model.updateprojectSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/projects/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getprojectbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get projects by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get projects by ID.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/projects/projectpiechart
router.post("/projectpiechart", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getprojectBypiechartSQL(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].project);
                    totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "projects get successfully.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "projects not added.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            }
        }
    });
});
module.exports = router; 