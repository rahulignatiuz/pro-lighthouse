var express = require("express");
const router = express.Router();
var User = require("../domain/user");
var db = require("../db/database");

//http://localhost:6001/api/mappingprojectprojecttype
router.post("/", (req, res, next) => {

    ProjecttypeID = req.body.ProjecttypeID;
    db.query(User.getAllMappingprojectprojectypeSQL(ProjecttypeID), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Mappingprojectprojectype get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Mappingprojectprojectype not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/mappingprojectprojecttype/add
router.post('/add', (req, res, next) => {
    let p = {};
    p.ProjectID = req.body.ProjectID;
    p.ProjecttypeID = req.body.ProjecttypeID;

    //console.log(p);
    db.query(User.AddAllmappingprojectprojecttypeSQL(p), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });
});
//http://localhost:6001/api/mappingprojectprojecttype/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;
    //console.log(p);
    db.query(User.updateAllmappingprojectandtypeSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }
    });
});
module.exports = router;