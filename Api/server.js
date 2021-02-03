const express =  require('express');
var app        = express();
var server     = require('http').Server(app);
const homepage = require("./api/homepage");
const login =require("./api/login");
// const users    = require("./api/users");
 const lessons = require("./api/lessons");
 const departments   = require("./api/departments");
 const projects = require ("./api/projects");
 const keywords = require("./api/keywords");
 const milestones = require("./api/milestones");
 const impactcategory = require("./api/impactcategory");
 const phases = require("./api/phases");
 const impactlevel =require("./api/impactlevel");
 const userusefullesson=require("./api/userusefullesson");
 const mappingkeywordlesson =require("./api/mappingkeywordlesson");
 const projecttype = require("./api/projecttype");
 const mappingprojectprojecttype = require("./api/mappingprojectprojecttype");
 const mappingprojectmilestone = require("./api/mappingprojectmilestone");
 const mappingprojectphase =require("./api/mappingprojectphase");
 const mappingprojecttypemilestones = require("./api/mappingprojecttypemilestones");
 const userlike =require("./api/userlike");
 const functions=require("./api/functions");
 const lifecycle = require ("./api/lifecycle");
 const processtype = require("./api/process");
 const userApi = require("./api/user");
 const notification = require("./api/notification");
 
var bodyparser = require("body-parser");
var cors       = require("cors");

const port  = process.env.port || 6001;

app.use(cors());
app.use(bodyparser.json());
app.use(express.static(__dirname + 'uploads'));
app.use('/api/uploads', express.static(__dirname + '/api/uploads'));
app.use('/api/uploads', express.static(__dirname + '/uploads'));
// app.use("/api/",homepage);
// app.use("/api/users",users);
// app.use("/api/lessons",lessons);
app.use("/api",homepage);
app.use("/api/login",login);
// app.use("/users",users);
app.use("/api/lessons",lessons);
app.use("/api/departments",departments);
app.use("/api/projects",projects);
app.use("/api/keywords",keywords);
app.use("/api/milestones",milestones);
app.use("/api/impactcategory",impactcategory);
app.use("/api/phases",phases);
app.use("/api/impactlevel",impactlevel);
app.use("/api/userusefullesson",userusefullesson);
app.use("/api/mappingkeywordlesson",mappingkeywordlesson);
app.use("/api/projecttype",projecttype);
app.use("/api/mappingprojectprojecttype",mappingprojectprojecttype);
app.use("/api/mappingprojectmilestone",mappingprojectmilestone);
app.use("/api/mappingprojectphase",mappingprojectphase);
app.use("/api/mappingprojecttypemilestones",mappingprojecttypemilestones);
app.use("/api/userlike",userlike);
app.use("/api/functions",functions);
app.use("/api/process",processtype);
app.use("/api/lifecycle",lifecycle)
app.use("/api/user",userApi)
app.use("/api/notification",notification)


//if we are here then the specified request is not found
app.use((req,res,next)=> {
    const err = new Error("Not Found");
    err.status = 404;
    next(err);
});
 
//all other requests are not implemented.
app.use((err,req, res, next) => {
   res.status(err.status || 501);
   res.json({
       error: {
           code: err.status || 501,
           message: err.message
       }
   });
});

server.listen(port);