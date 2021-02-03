var express    = require("express");
const router   = express.Router();
var Model       = require("../domain/model");
var db         = require("../db/database");

//http://localhost:6001/api/mappingprojectphase
router.post("/",  (req, res, next)=>{
    
    ProjecttypeID=req.body.ProjecttypeID;
    db.query(Model.getAllMappingprojectphaseSQL(ProjecttypeID), (err, result)=> {
        let data = result[0];
        if(!err) {
            if(data && data.length > 0) {
                res.status(200).json({
					status:true,
                    message:"Mappingprojectypephase get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
					status:false,
                    message:"Mappingprojectypephase not added.",
					result:data
                });
            }  
        }
    });
})
//http://localhost:6001/api/mappingprojectphase/add
router.post('/add',(req,res,next)=>{
    let p={};
   
    p.ProjecttypeID =req.body.ProjecttypeID;
    p.PhaseID = req.body.PhaseID;

    //console.log(p);
    db.query(Model.AddAllmappingprojectypephaseSQL(p),(err,result)=>{
        let results = result[1][0];
        if(err){
            res.send({status:false,result:results,message:'not-added'})
        }
        else{
            return res.send({status:true,data:results,message:'added'});
        }

    })

})
//http://localhost:6001/api/mappingprojectphase/update
router.post('/update',(req,res,next)=>{
    let i={};
    i.ID =req.body.ID;
    i.Indexing =req.body.Indexing;
    
   
    //console.log(p);
    db.query(Model.updateAllmappingprojectphaseSQL(i),(err,results)=>{
        if(err){
            res.send({status:false,result:results,message:'not-added'})
        }
        else{
            return res.send({status:true,data:results,message:'added'});
        }

    })

})
//http://localhost:6001/api/mappingprojectphase
router.get("/",  (req, res, next)=>{
    db.query(Model.mappingprojectphase(), (err, result)=> {
        let data = result[0];
        if(!err) {
            if(data && data.length > 0) {
                res.status(200).json({
					status:true,
                    message:"mappingprojectphase get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
					status:false,
                    message:"mappingprojectphase not added.",
					result:data
                });
            }  
        }
    });
})

module.exports = router;