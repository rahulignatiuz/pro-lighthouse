var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/process
router.get("/", (req, res, next) => {
    db.query(Model.getAllProcessSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Process get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Process not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/process/add
router.post('/add', (req, res, next) => {
    let i = {};
    i.Name = req.body.Name;
    i.Description = req.body.Description;
    i.CreatedBy = req.body.CreatedBy;
    i.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(Model.AddAllprocessSQL(i), (err, result) => {
        let results = result[1][0];
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/process/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllprocessSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});

//http://localhost:6001/api/process/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name;


    //console.log(p);
    db.query(Model.updateprocessSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/process/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getprocessbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get process by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get process by ID.",
                    result: data
                });
            }
        }
    });
});
module.exports = router;


