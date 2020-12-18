var express = require("express");
const router = express.Router();
var User = require("../domain/user");
var db = require("../db/database");

//http://localhost:6001/api/userusefullesson
router.get("/", (req, res, next) => {
    db.query(User.getAllUserusefulllessonsSQL(), (err, data) => {
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
//http://localhost:6001/api/userusefullesson/add
router.post("/add", (req, res, next) => {
    let l = {};

    l.UserID = req.body.UserID;
    l.LessonID = req.body.LessonID;
    l.Description = req.body.Description;
    l.flag = req.body.flag;
    console.log(l);
    //console.log(db.query(User.AddUserusefullessonsSQL(l)));
    db.query(User.AddUserusefullessonsSQL(l), (err, results) => {
        //console.log(results)
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }
    });
});

//http://localhost:6001/api/userusefullesson/countbyid
//flag=0 ->non implemented flag=1 -> Implemented
router.post("/countbyid", (req, res, next) => {
    let id = req.body.id;

    db.query(User.getallcountuserusefulSQL(id), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Total number of implemented/non-implemented get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "implemented/non-implemented not added.",
                    result: data
                });
            }
        }
    });
});
//User Pie chart API for lessons
router.post("/puserlessonchart", (req, res, next) => {
    let id = req.body.id;
    db.query(User.getuserusefulByUserPieChartSQL(id), (err, data) => {
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].number);
                    labelObj.push(data[i].user);
                }
                res.status(200).json({
                    status: true,
                    message: "Lessons get successfully.",
                    data: dataObj,
                    label: labelObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Lessons not added.",
                    data: dataObj,
                    label: labelObj
                });
            }
        }
    });
});
module.exports = router; 
