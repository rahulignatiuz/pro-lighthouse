var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/userlike
router.post("/", (req, res, next) => {
    let LessonID = req.body.LessonID;
    db.query(Model.getAllModellikeSQL(LessonID), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "userlike get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "userlike not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/userlike/checklike
router.post("/checklike", (req, res, next) => {
    let l = {};
    l.UserID = req.body.UserID;
    l.LessonID = req.body.LessonID;
    db.query(Model.checkAlluserlikeSQL(l), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "userlike get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "userlike not find.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/userlike/add
router.post("/add", (req, res, next) => {
    let l = {};
    l.UserID = req.body.UserID;
    l.LessonID = req.body.LessonID;
    l.Likes = req.body.Likes;
    console.log(l);
    db.query(Model.checkAlluserlikeSQL(l), (err, rows) => {
        if (err) {
            return console.log(err);
        }
        if (!rows.length) {
            db.query(Model.addAlluserlikeSQL(l), (err, data) => {
                console.log(data);
                if (!err) {
                    if (data) {
                        res.status(200).json({
                            status: true,
                            message: "userlike get successfully.",
                            result: data
                        });
                    } else {
                        res.status(200).json({
                            status: false,
                            message: "userlike not added.",
                            result: data
                        });
                    }
                }
            });
        } else {
            res.status(200).json({
                status: false,
                message: "Already like",
                result: rows
            });
        }
    });
});
//http://localhost:6001/api/userlike/dislike
router.post("/dislike", (req, res, next) => {
    let ID = req.body.ID;
    db.query(Model.deleteAlluserlikeSQL(ID), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "dislike  successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "dislike failed.",
                    result: data
                });
            }
        }
    });
});

module.exports = router; 