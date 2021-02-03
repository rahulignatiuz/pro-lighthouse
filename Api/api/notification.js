var express = require("express");
const router = express.Router();
var Model = require("../domain/model");
var db = require("../db/database");
const cron = require('node-cron');
const nodemailer = require('nodemailer');
const lighthouseJson = require('../json/lighthouse');

var transport = nodemailer.createTransport({
    host: lighthouseJson.SMTP_HOST,
    port: lighthouseJson.SMTP_POST,
    secure: lighthouseJson.SMTP_SECURE,
    auth: {
        user: lighthouseJson.SMTP_USER,
        pass: lighthouseJson.SMTP_PASSWORD
    }
});

//handles url http://localhost:6001/api/notification
router.post("/", (req, res, next) => {
    db.query(Model.getAllNotification(req.body.UserID), (err, result) => {
        let data = result[0];
        if (err) {
            var status = false, msg = "Fail to get notification";
            res.status(200).json({
                status: status,
                message: msg,
                result: err
            });
        } else {
            var status = true, msg = "Notification get successfully";
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }

    });
});
//handles url http://localhost:6001/api/notification/delete
router.post("/delete", (req, res, next) => {
    db.query(Model.deleteNotification(req.body.NtfID), (err, data) => {
        if (err) {
            var status = false, msg = "Notification not deleted";
            res.status(200).json({
                status: status,
                message: msg,
                result: err
            });
        } else {
            var status = true, msg = "Notification deleted";
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }

    });
});

//handles url http://localhost:6001/api/notification/frequency
router.get("/frequency", (req, res, next) => {
    db.query(Model.getFrequency(), (err, result) => {
        let data = result[0];
        if (err) {
            var status = false, msg = "Fail to get frequency";
            res.status(200).json({
                status: status,
                message: msg,
                result: err
            });
        } else {
            var status = true, msg = "Frequency get successfully";
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }

    });
});
//handles url http://localhost:6001/api/notification/add
router.post("/add", (req, res, next) => {
    let obj = req.body;
    db.query(Model.addNotification(obj), (err, result) => {
        let data = result[1][0];
        if (err) {
            var status = false, msg = "Fail to add notification";
            res.status(200).json({
                status: status,
                message: msg,
                result: err
            });
        } else {
            var status = true, msg = "Successfully added notification";
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }

    });

});
var ifScheduled = true;
var notificationLessons = [];
var duration = "";
//Cron job run every testing
// cron.schedule('*/30 * * * * *', function () {
//     console.log('Running Cron Job - test');
//     // endOfWeek();
//     //console.log(endOfMonth());
//     notificationLessons = [];
//     if (ifScheduled) {
//         duration = "day";
//         getAllNotificationByDate(duration);
//     }
// });
//Cron job run every day
cron.schedule('0 8 * * *', function () {
    console.log('Running Cron Job - day');
    notificationLessons = [];
    if (ifScheduled) {
        duration = "day";
        getAllNotificationByDate(duration);
    }
});
//Cron job run every monday
cron.schedule('0 0 * * MON', function () {
    console.log('Running Cron Job - week');
    notificationLessons = [];
    if (ifScheduled) {
        duration = "week";
        getAllNotificationByDate(duration);
    }
});
//Cron job run every first day of month 
cron.schedule('0 0 1 * *', function () {
    console.log('Running Cron Job - month');
    notificationLessons = [];
    if (ifScheduled) {
        duration = "month";
        getAllNotificationByDate(duration);
    }
});
function getAllNotificationByDate(duration) {
    var bar = new Promise((resolve, reject) => {
        db.query(Model.getAllNotificationByData(duration), (err, result) => {
            let data = result[0];
            // console.log("++++++result[key]data++++++++", data);
            if (!err) {
                data.forEach((notification, index, array) => {
                    getNotificationData(notification, duration);
                    if (index === array.length - 1) resolve();
                });
            }

        });
    });
    bar.then(() => {
        setTimeout(function () {
            var fromLessonDate = "";
            var nftls = notificationLessons.filter((v, i, a) => a.findIndex(t => (t.ntfID === v.ntfID && t.lsID === v.lsID)) === i);
            var group_to_values = nftls.reduce(function (obj, item) {
                obj[item.User] = obj[item.User] || [];
                obj[item.User].push(item.lsID);
                return obj;
            }, {});

            var groups = Object.keys(group_to_values).map(function (key) {
                return { User: key, lsID: group_to_values[key] };
            });
            if (duration == "week") {
                fromLessonDate = "week ending " + endOfWeek();

            } else if (duration == "month") {
                fromLessonDate = "month ending " + endOfMonth();
            } else if (duration == "day") {

                fromLessonDate = "last day " + getTodayDate();
            }
            //  console.log("++++++result[key]++++++++", groups);
            groups.forEach(function (sendNotfications) {
                var arrayItems = "";
                var lessonIDProject = "";
                var lessonIDProcess = "";
                //console.log("++++++result[key]++++++++2", sendNotfications);
                var emails = getUserByID(sendNotfications.User);
                emails.then(function (email) {
                    //console.log("++++++emails++++++++2", email[0].Email);
                    var titles = getLessonByID(sendNotfications.lsID);
                    titles.then(function (title) {
                        //console.log("++++++title++++++++2", email[0].Email, title);
                        for (x of title) {
                            //  console.log("369852147------2", x.Title);
                            arrayItems += "<li>" + x.Title + "</li>";
                            if (x.ProjectID) {
                                lessonIDProject += x.ID + ",";
                            } else if (x.ProcessID) {
                                lessonIDProcess += x.ID + ",";
                            }
                        }
                        if (!lessonIDProject) {
                            lessonIDProject = 0;
                        }
                        if (!lessonIDProcess) {
                            lessonIDProcess = 0;
                        }
                        var mailOptions = {
                            from: lighthouseJson.SMTP_USER,
                            to: email[0].Email,
                            subject: 'New lesson added',
                            html: `<b>Hello ${email[0].FirstName}</b>, 
                        <p>Below is the summary of the lessons for the  ${fromLessonDate}.</p>
                        <ul>${arrayItems},</ul>
                        <p>Click here to <a href="${lighthouseJson.BASE_URL}/#/user/mylessons-project?lessonid=${lessonIDProject}">Project</a> and <a href="${lighthouseJson.BASE_URL}/#/user/mylessons-process?lessonid=${lessonIDProcess}">Process</a> </p>
                        <p>You are receiving this email because you subscribed to be notified when new lessons are added as per your selection criteria. To manage your notification settings, please click to <a href="${lighthouseJson.BASE_URL}/#/user/notification">here</a>. </p>
                        <p>If you have any questions, please contact the administrator at Prita.Jhoku@Roche.com </p>
                        <p>Thank you</p>`
                        };
                        transport.sendMail(mailOptions, function (error, info) {
                            if (!error) {
                                console.log('Email sent: ' + info.response);
                            } else {
                                console.log('Email sent error: ' + error);
                            }
                        });
                        // console.log("lessonsTitels++++++++++++++lessonIDProject", lessonIDProject, arrayItems);
                        // console.log("lessonsTitels++++++++++++++", lessonIDProcess, arrayItems, fromLessonDate);
                        // console.log("lessonsTitels++++++++++++++fromLessonDate", fromLessonDate);
                    });
                });
            });
        }, 3000);
    });
}
function endOfWeek() {
    date = new Date();
    var lastday = date.getDate() - 3;
    //console.log("-=-=", lastday);
    return new Date(date.setDate(lastday)).toISOString().split('T')[0];
}
function endOfMonth() {
    var dateObj = new Date();
    dateObj.setDate(0)

    var month = dateObj.getMonth() + 1;
    var day = dateObj.getDate();
    var year = dateObj.getFullYear();

    var newdate = year + "-" + month + "-" + day;
    // console.log("prevMonthLastDate--------", newdate);
    return newdate;
}
function getTodayDate() {
    var today = new Date();
    var dd = String(today.getDate()).padStart(2, '0');
    var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
    var yyyy = today.getFullYear();

    return yyyy + "-" + mm + "-" + dd;
}
async function getNotificationData(notification, duration) {
    let result = await getNotificationDataCallback(notification, duration);
    result.forEach((notificationData) => {
        notificationLessons.push({ User: notificationData.User, ntfID: notificationData.ntfID, lsID: notificationData.lsID });
    });
}
function getNotificationDataCallback(notification, duration) {
    return new Promise((resolve, reject) => {
        db.query(Model.getAllNotificationByDataWithLesson(notification, duration), (err, data) => {
           // let data = result[0];
            if (data.length > 0) {
                return err ? reject(err) : resolve(data);
            }
        });
    });
}
function getUserByID(UserID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getUserByID(UserID), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                return err ? reject(err) : resolve(data);
            }
        });
    });
}
function getLessonByID(LessonID) {
    return new Promise((resolve, reject) => {
        db.query(Model.getLessonByIDSQL(LessonID), (err, result) => {
            let data = result[0];
            if (data.length > 0) {
                return err ? reject(err) : resolve(data);
            }
        });
    });
}
//handles url http://localhost:6001/api/notification/edit
router.post("/edit", (req, res, next) => {
    let obj = req.body;
    db.query(Model.editNotification(obj), (err, data) => {
        if (err) {
            var status = false, msg = "Fail to edit notification";
            res.status(200).json({
                status: status,
                message: msg,
                result: err
            });
        } else {
            var status = true, msg = "Successfully edit notification";
            res.status(200).json({
                status: status,
                message: msg,
                result: data
            });
        }

    });

});
module.exports = router;