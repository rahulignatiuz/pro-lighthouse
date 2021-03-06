var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");



//http://localhost:6001/api/impactcategory
router.get("/", (req, res, next) => {

    db.query(Model.getAllimpactcategorySQL(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "impactcategory get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "impactcategory not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/impactcategory/add
router.post('/add', (req, res, next) => {
    let i = {};
    i.Name = req.body.Name.replace(/'/g, "\\'")
    if(req.body.Description){
        i.Description = req.body.Description.replace(/'/g, "\\'")
    }else{
        i.Description = ''
    }
    i.CreatedBy = req.body.CreatedBy;
    i.UpdatedBy = req.body.UpdatedBy;
    //console.log(p);
    db.query(Model.AddAllimpactcategorySQL(i), (err, result) => {
        if (!err) {
            let results = result[1][0];
            console.log("----------------+++++++++++++++", results); 
            res.status(200).json({
                status: true,
                message: "impactcategory added successfully.",
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
//http://localhost:6001/api/impactcategory/update
router.post('/update', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Indexing = req.body.Indexing;


    //console.log(p);
    db.query(Model.updateAllimpactcategorySQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    })

});
//http://localhost:6001/api/impactcategory/updatename
router.post('/updatename', (req, res, next) => {
    let i = {};
    i.ID = req.body.ID;
    i.Name = req.body.Name.replace(/'/g, "\\'")


    //console.log(p);
    db.query(Model.updateimpactcategorySQL(i), (err, results) => {
        if (err) {
            res.send({ status: false, result: results, message: 'not-added' })
        }
        else {
            return res.send({ status: true, data: results, message: 'added' });
        }

    })

});
//http://localhost:6001/api/impactcategory/id
router.post("/id", (req, res, next) => {
    ID = req.body.ID;
    db.query(Model.getimpactcategorybyid(ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "Successfully get impactcategory by ID.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "Not get impactcategory by ID.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/impactcategory/impactcategorybarchart
router.get("/impactcategorybarchart", (req, res, next) => {
    db.query(Model.getimpactcategoryBybarchartSQL(req.body), (err, result) => {
        let data = result[0];
        if (!err) {
            let dataObj = [];
            let labelObj = [];
            let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].total);
                    labelObj.push(data[i].impact);
                    totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "impactcategory get successfully.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "impactcategory not added.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            }
        }
    });
});
module.exports = router; 