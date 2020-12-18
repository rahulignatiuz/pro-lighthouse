var express = require("express");
const router = express.Router();
var User = require("../domain/user");
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
var authed = false;

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
router.post("/", (req, res, next) => {
    //console.log(User.getUserLoginSQL(req.body.Username,req.body.Password));    
    db.query(User.getUserLoginSQL(req.body.Username, req.body.Password), (err, data) => {
        if (data.length == 0) {
            var status = false, msg = "Invalid Username or Password.";
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
    // if (!authed) {
    //     const scope = [
    //         'https://www.googleapis.com/auth/plus.me', // request access here
    //         'https://www.googleapis.com/auth/userinfo.email',
    //     ];
    //     // Generate an OAuth URL and redirect there
    //     const url = oAuth2Client.generateAuthUrl({
    //         access_type: 'offline',
    //         scope: scope
    //     });
    //     // res.redirect(url);
    //     res.status(200).json({
    //         url: url
    //     });
    // } else {
    //     const gmail = google.gmail({ version: 'v1', auth: oAuth2Client });
    //     gmail.users.labels.list({
    //         userId: 'me',
    //     }, (err, res) => {
    //         if (err) return console.log('The API returned an error: ' + err);
    //         const labels = res.data.labels;
    //         console.log(labels);
    //         if (labels.length) {
    //             console.log('Labels:');
    //             labels.forEach((label) => {
    //                 console.log(`- ${label.name}`);
    //             });
    //         } else {
    //             console.log('No labels found.');
    //         }
    //     });
    //     res.send('Logged in')
    // }
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
                    // do something with JSON
                    console.log(json);
                    console.log(json.email);
                    const email = json.email;
                    const address = email.split('@').pop();
                    const allowDomain = lighthouseJson.ALLOW_DOMAIN;
                    const loginDomain = [address];
                    console.log(findCommonEmailDomain(allowDomain, loginDomain));
                    console.log(address);
                    if (findCommonEmailDomain(allowDomain, loginDomain)) {
                        db.query(User.authUserByEmail(json.email), (emailErr, emailData) => {
                            if (!emailErr) {
                                if (emailData.length) {
                                    let IsEnabled = 1;
                                    // googleLoginCallback(json.email)
                                    db.query(User.getGoogleUser(json.email, IsEnabled), (checkGoogleErr, checkGoogleData) => {
                                        if (!checkGoogleErr) {
                                            if (checkGoogleData.length) {
                                                res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?email=" + json.email);
                                            } else {
                                                db.query(User.googleUser(json, IsEnabled), (err, data) => {
                                                    console.log(data);
                                                    res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?email=" + json.email);
                                                });
                                            }
                                        }
                                    });
                                } else {
                                    let IsEnabled = 0;
                                    db.query(User.getGoogleUserBYEmail(json.email, IsEnabled), (checkGoogleErr, checkGoogleData) => {
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
//         db.query(User.getProjectIDByName(Project), (err, data) => {
//             if (data.length > 0) {
//                 //console.log(err);
//                 return err ? reject(err) : resolve(data[0].ID);
//             } else {
//                 db.query(User.deletelessonsSQL(lessonID), (err, data) => {
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
    db.query(User.authUserByEmail(req.body.email), (err, data) => {
        console.log(err);
        console.log(data);
        console.log(data.length);
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
    db.query(User.getGoogleUser(req.body.email, IsEnabled), (err, data) => {
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

    db.query(User.getAllPendingUser(), (err, data) => {

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
    db.query(User.getPendingUserByID(req.body.ID), (err, data) => {
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
        db.query(User.googleUser(json, IsEnabled), (err, data) => {
            console.log(data);
            var mailOptions = {
                from: lighthouseJson.SMTP_USER,
                to: 'rahul.rai@ardentinfotech.com',
                subject: 'A new account has been requested',
                text: `Hello Admin, 
                     \nA new account has been requested at ${lighthouseJson.BASE_URL} using ${json.email} email address. 
                     \nTo confirm your new account, please go to this web address:
                     \n${lighthouseJson.BASE_URL}\nIn most mail programs, this should appear as a blue link which you can just click on. If that doesnt work, then cut and paste the address into the address line at the top of your web browser window.
                            
                     \nThanks`
            };
            transport.sendMail(mailOptions, function (error, info) {
                if (!error) {
                    console.log('Email sent: ' + info.response);
                    res.status(200).json({
                        status: true,
                        result: data
                    });
                    // res.redirect(lighthouseJson.BASE_URL + "/#/social-auth?account-exist=" + json.email);
                }
            });
        });
    });
});
module.exports = router;