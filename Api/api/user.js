var express = require("express");
const router = express.Router();
var User = require("../domain/user");
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
    // console.log(User.getAllKeywordsSQL());
    db.query(User.getAllUser(), (err, data) => {
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
    obj.IsEnabled = req.body.IsEnabled;

    db.query(User.userRegistration(obj), (err, userData) => {
        if (!err) {
            console.log(userData.insertId);
            db.query(User.mappingUserRoles(userData.insertId, req.body.Roles), (err, data) => {
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
                result: data
            });
        }
    });
});
//http://localhost:6001/api/user/account/settings
router.post('/account/settings', function (req, res) {
    let obj = {};
    obj.UserID = req.body.UserID;
    obj.SettRoles = req.body.SettRoles;
    obj.Status = req.body.Status;
    obj.SettingUserID = req.body.SettingUserID;

    db.query(User.userAccountSettings(obj), (err, userData) => {
        if (!err) {
            // console.log(userData.insertId);
            db.query(User.mappingUserRolesAccountSettings(obj), (err, data) => {
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
    db.query(User.getUserByID(UserID), (err, userData) => {
        if (!err) {
            db.query(User.deleteGoogleUser(userData[0].Email), (err, data) => {
                if (!err) {

                    db.query(User.deleteUserSQL(UserID), (err, userData) => {
                        if (!err) {
                            // console.log(userData.insertId);
                            db.query(User.deleteMappingUserRolesSQL(UserID), (err, data) => {
                                if (!err) {
                                    res.status(200).json({
                                        status: true,
                                        message: "user delete successfully."
                                    });
                                }
                            });
                        } else {
                            res.status(200).json({
                                status: false,
                                message: "user not delete successfully."
                            });
                        }
                    });
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
    obj.IsEnabled = req.body.IsEnabled;

    db.query(User.userRegistration(obj), (err, userData) => {
        if (!err) {
            console.log(userData.insertId);
            db.query(User.mappingUserRoles(userData.insertId, req.body.Roles), (err, data) => {
                if (!err) {
                    db.query(User.updateGoogleUser(obj), (err, data) => {
                        if (!err) {
                            var mailOptions = {
                                from: lighthouseJson.SMTP_USER,
                                to: req.body.Email,
                                subject: 'Approved, your login request.',
                                text: `Hello ${req.body.FirstName}, 
                                \nYour login request has been Approved by  ${lighthouseJson.PLATFORM_NAME} using ${req.body.Email} email address. 
                                \nTo confirm your new account, please go to this web address:
                                \n${lighthouseJson.BASE_URL}\nIn most mail programs, this should appear as a blue link which you can just click on. If that doesnt work, then cut and paste the address into the address line at the top of your web browser window.
                                
                                \nThanks`
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
    db.query(User.pendingUserDelete(req.body.ID), (err, data) => {
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