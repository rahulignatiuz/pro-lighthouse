var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/phases
router.get("/", (req, res, next) => {
    db.query(Model.getAllphaseSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "phases get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "phases not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/phases/add
router.post('/add', (req, res, next) => {
    let p = {};
    p.Name = req.body.Name;
    p.Description = req.body.Description;
    p.CreatedBy = req.body.CreatedBy;
    p.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(Model.AddAllphasesSQL(p), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "phases added successfully.",
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
//http://localhost:6001/api/phases/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllphasesSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }
    });
});

//http://localhost:6001/api/phases/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name;


    //console.log(p);
    db.query(Model.updatephasesSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }
    });
});
//http://localhost:6001/api/phases/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getphasesbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get phases by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get phases by ID.",
                    result: data
                });
            }
        }
    });
});

//http://localhost:6001/api/phases/phasebarchart
router.post("/phasebarchart", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getphaseBybarchartSQL(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].phase);
                    totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "phases get successfully.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "phases not added.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            }
        }
    });
});
module.exports = router; 