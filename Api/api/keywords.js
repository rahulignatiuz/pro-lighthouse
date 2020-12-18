var express    = require("express");
const router   = express.Router();
var User       = require("../domain/user");
var db         = require("../db/database");

//http://localhost:6001/api/keywords
router.get("/",  (req, res, next)=>{
    db.query(User.getAllKeywordsSQL(), (err, data)=> {
        if(!err) {
            if(data && data.length > 0) {
                res.status(200).json({
					status:true,
                    message:"Keywords get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
					status:false,
                    message:"Keywords not added.",
					result:data
                });
            }  
        }
    });
    }),
    //http://localhost:6001/api/keywords/add
    router.post('/add',(req,res,next)=>{
        let k={};
        k.Name =req.body.Name;
        k.Description = req.body.Description;
        k.CreatedBy = req.body.CreatedBy;
        k.UpdatedBy = req.body.UpdatedBy;
        //console.log(d);
        db.query(User.AddAllKeywordsSQL(k),(err,results)=>{
            if(err){
                res.send({status:false,result:results,message:'not-added'})
            }
            else{
                return res.send({status:true,data:results,message:'added'});
            }

        })
   
})
module.exports = router; 