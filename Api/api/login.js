var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");
const { google } = require('googleapis');
const fetch = require('node-fetch');
const lighthouseJson = require('../json/lighthouse');
var nodemailer = require('nodemailer');
var fs = require('fs');

const CLIENT_ID = lighthouseJson.CLIENT_ID;
const CLIENT_SECRET = lighthouseJson.CLIENT_SECRET;
const REDIRECT_URL = lighthouseJson.REDIRECT_URL;

const oAuth2Client = new google.auth.OAuth2(CLIENT_ID, CLIENT_SECRET, REDIRECT_URL);

var transport = nodemailer.createTransport({
    host: lighthouseJson.SMTP_HOST,
    port: lighthouseJson.SMTP_POST,
    secure: lighthouseJson.SMTP_SECURE,
    auth: {
        user: lighthouseJson.SMTP_USER,
        pass: lighthouseJson.SMTP_PASSWORD
    }
});


//handles url http://localhost:6001/api/login
// router.post("/", (req, res, next) => {
//     //console.log(Model.getUserLoginSQL(req.body.Username,req.body.Password));    
//     db.query(Model.getUserLoginSQL(req.body.Username, req.body.Password), (err, data) => {
//         if (data.length == 0) {
//             var status = false, msg = "Invalid Username or Password.";
//         } else {
//             msg = "Login successfully";
//             status = true;
//         }
//         res.status(200).json({
//             status: status,
//             message: msg,
//             result: data
//         });
//     });
// });
//handles url http://localhost:6001/api/login/google
router.get('/google', (req, res) => {
    const scope = [
        //'https://www.googleapis.com/auth/gmail.readonly'
        'https://www.googleapis.com/auth/plus.me', // request access here
        'https://www.googleapis.com/auth/userinfo.email',
    ];
    // Generate an OAuth URL and redirect there
    const url = oAuth2Client.generateAuthUrl({
        access_type: 'offline',
        scope: scope
    });
    // res.redirect(url);
    res.status(200).json({
        url: url
    });
    
});

router.get('/auth/google/callback', function (req, res) {
    const code = req.query.code
    console.log('Labels:', code);
    if (code) {
        // Get an access token based on our OAuth code
        oAuth2Client.getToken(code, function (err, tokens) {
            if (!err) {
                oAuth2Client.setCredentials(tokens);
                let url = lighthouseJson.GOOGLE_USER_INFO + tokens.access_token;
                fetch(url, { method: "Get" }).then(res => res.json()).then((json) => {
                    console.log("googleUser---------------",json);
                    // do something with JSON
                    const email = json.email;
                    const address = email.split('@').pop();
                    const allowDomain = lighthouseJson.ALLOW_DOMAIN;
                    const loginDomain = [address];
                    console.log(findCommonEmailDomain(allowDomain, loginDomain));
                    console.log(address);
                    if (findCommonEmailDomain(allowDomain, loginDomain)) {
                        db.query(Model.authUserByEmail(json.email), (emailErr, emailDataResult) => {
                            let emailData = emailDataResult[0];
                            if (!emailErr) {
                                if (emailData.length) {
                                    if (emailData[0].IsEnabled == 1) {
                                        let IsEnabled = 1;
                                        // googleLoginCallback(json.email)
                                        db.query(Model.getGoogleUser(json.email, IsEnabled), (checkGoogleErr, checkGoogleDataResult) => {
                                            let checkGoogleData = checkGoogleDataResult[0];
                                            if (!checkGoogleErr) {
                                                if (checkGoogleData.length) {
                                                    // res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?email=" + json.email);
                                                    db.query(Model.updateAvatarImage(json.email, json.picture, IsEnabled), (err, data) => {
                                                        res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?email=" + json.email);
                                                    });

                                                } else {
                                                    db.query(Model.googleUser(json, IsEnabled), (err, result) => {
                                                        let data = result[1][0];
                                                        console.log(data);
                                                        res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?email=" + json.email);
                                                    });
                                                }
                                            }
                                        });
                                    } else {

                                        res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?inactive=" + json.email);
                                    }
                                } else {
                                    let IsEnabled = 0;
                                    db.query(Model.getGoogleUserBYEmail(json.email, IsEnabled), (checkGoogleErr, checkGoogleDataResult) => {
                                        let checkGoogleData = checkGoogleDataResult[0];
                                        if (!checkGoogleErr) {
                                            if (checkGoogleData.length) {
                                                res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?request-pending=" + json.email);
                                            } else {
                                                res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?account-exist=" + json.email + "&access-token=" + tokens.access_token);
                                            }
                                        }
                                    });
                                }
                            }
                        });
                    } else {
                        res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?outer-domain-email=" + json.email);
                    }
                });
            }
        });
    }
});
// function googleLoginCallback(Project, lessonID) {
//     return new Promise((resolve, reject) => {
//         db.query(Model.getProjectIDByName(Project), (err, data) => {
//             if (data.length > 0) {
//                 //console.log(err);
//                 return err ? reject(err) : resolve(data[0].ID);
//             } else {
//                 db.query(Model.deletelessonsSQL(lessonID), (err, data) => {
//                     //console.log("Delete", data);
//                 });
//                 return err ? reject(err) : resolve(null);
//             }
//         });
//     });
// }
function findCommonEmailDomain(allowDomain, loginDomain) {
    return allowDomain.some(item => loginDomain.includes(item))
}
//handles url http://localhost:6001/api/login/google/auth
router.post('/google/auth', function (req, res) {
    db.query(Model.authUserByEmail(req.body.email), (err, result) => {
        let data = result[0];
        if (data.length == 0) {
            var status = false, msg = "Invalid not exist.";
        } else {
            msg = "Login successfully";
            status = true;
        }
        res.status(200).json({
            status: status,
            message: msg,
            result: data
        });
    });
});
//handles url http://localhost:6001/api/login/google/auth/user
router.post('/google/auth/user', function (req, res) {
    let IsEnabled = 1;
    db.query(Model.getGoogleUser(req.body.email, IsEnabled), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data.length == 0) {
                var status = false, msg = "Invalid email";
            } else {
                msg = "get detail successfully";
                status = true;
            }
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }

    });
});
//handles url http://localhost:6001/api/login/google/auth/pending/user
router.get('/google/auth/pending/user', function (req, res) {

    db.query(Model.getAllPendingUser(), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data.length == 0) {
                var status = false, msg = "Pending user not exist";
            } else {
                msg = "Get all pending user successfully";
                status = true;
            }
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }
    });
});
//handles url http://localhost:6001/api/login/google/auth/pending/user/id
router.post('/google/auth/pending/user/id', function (req, res) {
    db.query(Model.getPendingUserByID(req.body.ID), (err, result) => {
        let data = result[0];
        if (!err) {
            if (data.length == 0) {
                var status = false, msg = "Pending user not exist";
            } else {
                msg = "Get pending user successfully";
                status = true;
            }
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }
    });
});
//handles url http://localhost:6001/api/login/google/admin/email
router.post('/google/admin/email', function (req, res) {
    let accessToken = req.body.AccessToken;
    let url = lighthouseJson.GOOGLE_USER_INFO + accessToken;
    let IsEnabled = 0;

    fetch(url, { method: "Get" }).then(res => res.json()).then((json) => {
        db.query(Model.getGoogleUserBYEmail(json.email, IsEnabled), (checkGoogleErr, checkGoogleDataResult) => {
            let checkGoogleData = checkGoogleDataResult[0];
            if (!checkGoogleErr) {
                if (checkGoogleData.length) {												
                    res.status(200).json({
                        status: false,
                        result: checkGoogleData
                    });
                } else {
                    db.query(Model.googleUser(json, IsEnabled), (err, result) => {
                        let data = result[1][0];
                        if (!err) {
                            db.query(Model.getUserEmailForNotification(), (err, notificationEmail) => {
                                if (!err) {
                                    notificationEmail.forEach((emails, index) => {
                                        var mailOptions = {
                                            from: lighthouseJson.SMTP_USER,
                                            to: emails.Email,
                                            subject: 'A new account has been requested',
                                            html: `<b>Dear Admin,</b><br><br>
                                            A new user has requested to access the Lighthouse Tool. The email address of the user is: <br>
                                            ${json.email}<br><br>
                                            Please click  <a href="${lighthouseJson.BASE_URL}/#/dashboard?request-email=${json.email}">here</a> to approve/reject the request.<br><br>
                                            Thank you`
                                        };
                                        transport.sendMail(mailOptions, function (error, info) {
                                            if (!error) {
                                                console.log('Email sent: ' + info.response);

                                                // res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?account-exist=" + json.email);
                                            }
                                        });

                                    });
                                    res.status(200).json({
                                        status: true,
                                        result: data
                                    });
                                }

                            });
                        }
                    });
                }
            }
        });

    });
});
module.exports = router;