var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/projecttype
router.get("/", (req, res, next) => {
    db.query(Model.getAllProjecttypeSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Projecttype get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Projecttype not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/projecttype/add
router.post('/add', (req, res, next) => {
    let p = {};
    p.Name = req.body.Name;
    p.Description = req.body.Description;
    p.CreatedBy = req.body.CreatedBy;
    p.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(Model.AddAllProjecttypeSQL(p), (err, result) => {
       // let results = result[1][0];
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "Projecttype added successfully.",
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
//http://localhost:6001/api/projecttype/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllprojecttypeSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/projecttype/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name;


    //console.log(p);
    db.query(Model.updateprojecttypeSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/projecttype/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getprojecttypebyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get projecttype by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get projecttype by ID.",
                    result: data
                });
            }
        }
    });
});
module.exports = router;
