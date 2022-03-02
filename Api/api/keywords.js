var express    = require("express");
const router   = express.Router();
var Model       = require("../domain/model");
var db         = require("../db/database");

//http://localhost:6001/api/keywords
router.get("/",  (req, res, next)=>{
    db.query(Model.getAllKeywordsSQL(), (err, result)=> {
        let data = result[0];
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
        k.Name =req.body.Name.replace(/'/g, "\\'")
        k.Description = req.body.Description;
        k.CreatedBy = req.body.CreatedBy;
        k.UpdatedBy = req.body.UpdatedBy;
        //console.log(d);
        db.query(Model.AddAllKeywordsSQL(k),(err,result)=>{
            let results = result[1][0];
            if(err){
                res.send({status:false,result:results,message:'not-added'})
            }
            else{
                return res.send({status:true,data:results,message:'added'});
            }

        })
   
})
// Get most used keyword 
//http://localhost:6001/api/keywords/keywordbarchart
router.get("/keywordbarchart", (req, res, next) => {
    db.query(Model.getkeywordbarchartSQL(), (err, result) => {
        let data = result[0];
      //  console.log('-------------------------------------',data)
        if (!err) {
            let dataObj = [];
            let labelObj = [];
           // let totalObj = [];
            if (data && data.length > 0) {
                for (let i = 0; i < data.length; i++) {
                    dataObj.push(data[i].Appearances);
                    labelObj.push(data[i].Name);
                    // totalObj.push(data[i].totallesson);
                }
                res.status(200).json({
                    status: true,
                    message: "keywords get successfully.",
                    data: dataObj,
                    label: labelObj,
                  // totallesson: totalObj
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "departments not added.",
                    data: dataObj,
                    label: labelObj,
                    totallesson: totalObj
                });
            }
        }
    });
});
module.exports = router; 