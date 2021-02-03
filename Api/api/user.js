var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");
const lighthouseJson = require('../json/lighthouse');
var nodemailer = require('nodemailer');

var transport = nodemailer.createTransport({
    host: lighthouseJson.SMTP_HOST,
    port: lighthouseJson.SMTP_POST,
    secure: lighthouseJson.SMTP_SECURE,
    auth: {
        user: lighthouseJson.SMTP_USER,
        pass: lighthouseJson.SMTP_PASSWORD
    }
});


//http://localhost:6001/api/user
// router.get("/", middleware.checkToken, (req, res, next) =>{
router.get("/", (req, res, next) => {
    // console.log(Model.getAllKeywordsSQL());
    db.query(Model.getAllUser(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data && data.length > 0) {
                res.status(200).json({
                    status: true,
                    message: "user get successfully.",
                    result: data
                });
            } else {
                res.status(200).json({
                    status: false,
                    message: "user not added.",
                    result: data
                });
            }
        }
    });
});
//http://localhost:6001/api/user/register
router.post('/register', function (req, res) {
    let obj = {};
    obj.UserID = req.body.UserID;
    obj.FirstName = req.body.FirstName;
    obj.LastName = req.body.LastName;
    obj.Email = req.body.Email;
    obj.EmailNotification = req.body.EmailNotification;
    obj.IsEnabled = req.body.IsEnabled;
    db.query(Model.getUserIDByEmail(req.body.Email), (err, userDetailsResult) => {
        let userDetails = userDetailsResult[0];
        if (!err) {
            console.log("*9+-*9+-*9+-", userDetails);
            if (userDetails.length === 0) {
                //new user logic
                db.query(Model.userRegistration(obj), (err, userDataResult) => {
                    let userData = userDataResult[1][0];
                    if (!err) {
                        console.log(userData.insertId);
                        db.query(Model.mappingUserRoles(userData.insertId, req.body.Roles), (err, dataResult) => {
                            let data = dataResult[1][0];
                            if (!err) {
                                res.status(200).json({
                                    status: true,
                                    message: "user added successfully.",
                                    result: userData
                                });
                            }
                        });
                    } else {
                        res.status(200).json({
                            status: false,
                            message: "user not added successfully.",
                            result: err
                        });
                    }
                });
            } else {
                //existing user, redirect to another page 
                res.status(200).json({
                    status: false,
                    message: "user already exists.",
                    result: userDetails
                });
            }
        }
    });
});
//http://localhost:6001/api/user/account/settings
router.post('/account/settings', function (req, res) {
    let obj = {};
    obj.UserID = req.body.UserID;
    obj.SettFirstName = req.body.SettFirstName;
    obj.SettLastName = req.body.SettLastName;
    obj.SettRoles = req.body.SettRoles;
    obj.Status = req.body.Status;
    obj.Notifications = req.body.Notifications;
    obj.SettingUserID = req.body.SettingUserID;

    db.query(Model.userAccountSettings(obj), (err, userData) => {
        if (!err) {
            // console.log(userData.insertId);
            db.query(Model.mappingUserRolesAccountSettings(obj), (err, data) => {
                if (!err) {
                    res.status(200).json({
                        status: true,
                        message: "user update successfully."
                    });
                }
            });
        } else {
            res.status(200).json({
                status: false,
                message: "user not update successfully."
            });
        }
    });
});
//http://localhost:6001/api/user/account/delete
router.post('/account/delete', function (req, res) {
    UserID = req.body.UserID;
    console.log("failer delete user3 ---------userData[0].Email-------UserID---",UserID);
    db.query(Model.getUserByID(UserID), (err, userDataResult) => {
        let userData = userDataResult[0];
        if (!err) {
            console.log("failer delete user3 ---------userData[0].Email----------",userData[0].Email);
            db.query(Model.deleteGoogleUser(userData[0].Email), (err, data) => {
                
                if (!err) {

                    db.query(Model.deleteUserSQL(UserID), (err, userData) => {
                        if (!err) {
                            // console.log(userData.insertId);
                            db.query(Model.deleteMappingUserRolesSQL(UserID), (err, data) => {
                                if (!err) {
                                    res.status(200).json({
                                        status: true,
                                        message: "user delete successfully."
                                    });
                                }else{
                                    console.log("failer delete user3 -------------------",err);
                                }
                            });
                        } else {
                            console.log("failer delete user2 -------------------",err);
                            res.status(200).json({
                                status: false,
                                message: "user not delete successfully."
                            });
                        }
                    });
                }else{
                    console.log("failer delete user -------------------",err);
                }
            });

        }
    });

});
//http://localhost:6001/api/user/pending/register
router.post('/pending/register', function (req, res) {
    let obj = {};
    obj.UserID = req.body.UserID;
    obj.FirstName = req.body.FirstName;
    obj.LastName = req.body.LastName;
    obj.Email = req.body.Email;
    obj.EmailNotification = req.body.EmailNotification;
    obj.IsEnabled = req.body.IsEnabled;

    db.query(Model.userRegistration(obj), (err, userDataResult) => {
        let userData = userDataResult[1][0];
        if (!err) {
            console.log(userData.insertId);
            db.query(Model.mappingUserRoles(userData.insertId, req.body.Roles), (err, result) => {
                let data = result[1][0];
                if (!err) {
                    db.query(Model.updateGoogleUser(obj), (err, data) => {
                        if (!err) {
                            var mailOptions = {
                                from: lighthouseJson.SMTP_USER,
                                to: req.body.Email,
                                subject: 'Approved, your login request.',
                                html: `<b>Hello ${req.body.FirstName}</b>,<br><br> 
                                Your request to access the Lighthouse Tool has been approved. 
                                Please click <a href="${lighthouseJson.BASE_URL}/#/login">here</a> to access the website or <br> 
                                logon to ${lighthouseJson.BASE_URL}/#/login using the google account you used to request access.<br><br>
                                Please contact the administrator at – Prita.Jhoku@Roche.com if you need further assistance.<br><br>
                                
                                Thank you`
                            };
                            transport.sendMail(mailOptions, function (error, info) {
                                if (!error) {
                                    console.log('Email sent: ' + info.response);
                                    res.status(200).json({
                                        status: true,
                                        message: "user added successfully.",
                                        result: userData
                                    });
                                }
                            });

                        }
                    });
                }
            });
        } else {
            res.status(200).json({
                status: false,
                message: "user not added successfully.",
                result: data
            });
        }
    });
});
//http://localhost:6001/api/user/pending/account/delete
router.post('/pending/account/delete', function (req, res) {
    db.query(Model.pendingUserDelete(req.body.ID), (err, data) => {
        if (!err) {
            var mailOptions = {
                from: lighthouseJson.SMTP_USER,
                to: req.body.Email,
                subject: 'Rejected, your login request.',
                text: `Hello User, 
                \nYour login request has been Rejected by  ${lighthouseJson.PLATFORM_NAME} using ${req.body.Email} email address. 
                
                \nThanks`
            };
            transport.sendMail(mailOptions, function (error, info) {
                if (!error) {
                    console.log('Email sent: ' + info.response);
                    res.status(200).json({
                        status: true,
                        message: "user delete successfully."
                    });
                }
            });
        }
    });
});
module.exports = router; 