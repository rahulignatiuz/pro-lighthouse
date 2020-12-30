var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");

//http://localhost:6001/api/mappingprojecttypemilestones
router.post("/", (req, res, next) => {

    ProjecttypeID = req.body.ProjecttypeID;
    db.query(Model.getAllMappingprojecttypemilestonesSQL(ProjecttypeID), (err, data) => {
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Mappingprojectphase get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Mappingprojectphase not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/mappingprojecttypemilestones/add
router.post('/add', (req, res, next) => {
    let p = {};

    p.ProjecttypeID = req.body.ProjecttypeID;
    p.MilestoneID = req.body.MilestoneID;

    //console.log(p);
    db.query(Model.AddAllmappingprojecttypemilstonesSQL(p), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/mappingprojecttypemilestones/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllmappingprojectandmilestoneSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
module.exports = router;