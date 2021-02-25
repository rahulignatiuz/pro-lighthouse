var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");



//http://localhost:6001/api/impactlevel
router.get("/", (req, res, next) => {

    db.query(Model.getAllimpactlevelSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "impactlevel get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "impactlevel not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/impactlevel/add
router.post('/add', (req, res, next) => {
    let i = {};
    i.Name = req.body.Name;
    i.Description = req.body.Description;
    i.CreatedBy = req.body.CreatedBy;
    i.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(Model.AddAllimpactlevelSQL(i), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "impactlevel added successfully.",
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
//http://localhost:6001/api/impactlevel/countbyid
// low id =1,medium id =2,High id =3
router.post("/countbyid", (req, res, next) => {
    let id = req.body.id;

    db.query(Model.getCountimpactlevelSQL(id), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Total number of impact level get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "impactlevel not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/impactlevel/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllimpactlevelSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    })

});
//http://localhost:6001/api/impactlevel/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name;


    //console.log(p);
    db.query(Model.updateimpactlevelSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    })

});
//http://localhost:6001/api/impactlevel/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getimpactlevelbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get impactlevel by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get impactlevel by ID.",
                    result: data
                });
            }
        }
    });
});
module.exports = router; 