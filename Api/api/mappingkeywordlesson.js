var express = require("express");
const router = express.Router();
var User = require("../domain/user");
var db = require("../db/database");

//http://localhost:6001/api/mappingkeywordlesson
router.get("/", (req, res, next) => {
    db.query(User.getAllMappingkeywordlessonSQL(), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Mappingkeywordlesson get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Mappingkeywordlesson not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/mappingkeywordlesson/add

router.post('/add', function (req, res) {
    var m = {};
    m.LessonID = req.body.LessonID;
    m.KeywordID = req.body.KeywordID

    //console.log(m)
    db.query(User.Mappingkeywordlesson(m), (err, results) => {

        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }
    });
});
module.exports = router;