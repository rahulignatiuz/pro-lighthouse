var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/lifecycle
router.get("/", (req, res, next) => {
    db.query(Model.getAllLifecycleSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Lifecycle get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lifecycle not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/lifecycle/add
router.post('/add', (req, res, next) => {
    let m = {};
    m.Name = req.body.Name.replace(/'/g, "\\'")
    if(req.body.Description){
        m.Description = req.body.Description.replace(/'/g, "\\'")
    }else{
        m.Description = ''
    }
    m.CreatedBy = req.body.CreatedBy;
    m.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(Model.AddAlllifecycleSQL(m), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "lifecycle added successfully.",
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
//http://localhost:6001/api/lifecycle/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAlllifecycleSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/lifecycle/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name.replace(/'/g, "\\'")


    //console.log(p);
    db.query(Model.updatelifecycleSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/lifecycle/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getlifecyclebyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get lifecycle by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get lifecycle by ID.",
                    result: data
                });
            }
        }
    });
});

module.exports = router;