var express = require("express");
const router = express.Router();
var User = require("../domain/user");
var db = require("../db/database");

//http://localhost:6001/api/projecttype
router.get("/", (req, res, next) => {
    db.query(User.getAllProjecttypeSQL(), (err, data) => {
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
    db.query(User.AddAllProjecttypeSQL(p), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/projecttype/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(User.updateAllprojecttypeSQL(i), (err, results) => {
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
    db.query(User.updateprojecttypeSQL(i), (err, results) => {
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
    db.query(User.getprojecttypebyid(ID), (err, data) => {
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
