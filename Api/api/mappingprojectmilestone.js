var express    = require("express");
const router   = express.Router();
var User       = require("../domain/user");
var db         = require("../db/database");

//http://localhost:6001/api/mappingprojectprojecttype
router.post("/",  (req, res, next)=>{
    
    ProjectID=req.body.ProjectID;
    db.query(User.getAllMappingprojectmilestonesSQL(ProjectID), (err, data)=> {
        if(!err) {
            if(data && data.length > 0) {
                res.status(200).json({
					status:true,
                    message:"Mappingprojectmilestones get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
					status:false,
                    message:"Mappingprojectmilestones not added.",
					result:data
                });
            }  
        }
    });
})
module.exports = router;