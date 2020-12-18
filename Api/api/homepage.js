var express     = require('express');
const router    = express.Router();

router.get("/", (req, res, next) => {   
    res.status(200).json({
        message:"Home Page",
        result:'data',
        status:true
    });
});

module.exports = router;