var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");



//http://localhost:6001/api/milestones
router.get("/", (req, res, next) => {
    // console.log(Model.getAllProjectsSQL());
    db.query(Model.getAllMilestonesSQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Milestones get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Milestones not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/milestones/add
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
    db.query(Model.AddAllmilestoneSQL(m), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "milestones added successfully.",
                data : results
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
//http://localhost:6001/api/milestones/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllmilestonesSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/milestones/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name.replace(/'/g, "\\'")


    //console.log(p);
    db.query(Model.updatemilestonesSQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' });
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    });

});
//http://localhost:6001/api/milestones/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getmilestonesbyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get milestones by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get milestones by ID.",
                    result: data
                });
            }
        }
    });
});
// User Pie chart API for lessons
//http://localhost:6001/api/milestones/milestonechart
router.post("/milestonechart", (req, res, next) => {    
    ID = req.body.ID;
    db.query(Model.getmilestoneByUserPieChartSQL(ID), (err, result)=> {
        let data = result[0];
        if(!err) {
            let dataObj = [];
            let labelObj = [];            
            if(data && data.length > 0) {
                for(let i =0 ; i<data.length;i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].milestone);
                }
                res.status(200).json({
					status:true,
                    message:"milestone get successfully.",
                    data:dataObj,
                    label:labelObj
                });
            } else {
                res.status(200).json({
					status:false,
                    message:"milestone not added.",
                    data:dataObj,
                    label:labelObj
                });
            }
        }
    });
});
module.exports = router; 