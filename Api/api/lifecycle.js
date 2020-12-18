var express = require("express");
const router = express.Router();
var User = require("../domain/user");
var db = require("../db/database");

//http://localhost:6001/api/lifecycle
router.get("/", (req, res, next) => {
    db.query(User.getAllLifecycleSQL(), (err, data) => {
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
    m.Name = req.body.Name;
    m.Description = req.body.Description;
    m.CreatedBy = req.body.CreatedBy;
    m.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(User.AddAlllifecycleSQL(m), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/lifecycle/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(User.updateAlllifecycleSQL(i), (err, results) => {
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
    i.Name = req.body.Name;


    //console.log(p);
    db.query(User.updatelifecycleSQL(i), (err, results) => {
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
    db.query(User.getlifecyclebyid(ID), (err, data) => {
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