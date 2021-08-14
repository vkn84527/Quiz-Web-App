const responses = require('..//modules/common_functions/responses')
const constants = require('../modules/constants/constants')
const jwt = require('jsonwebtoken')
require('dotenv').config();
var secret_key = process.env.secret_key
var secret_key1 = process.env.secret_key1

module.exports.student = (req, res, next) => {
    try {
        var token = req.headers.authorization;
        const decoded = jwt.verify(token, secret_key);
        req.userData = decoded;
        req.student_id = req.userData.student_id
        next();
    } catch (error) {
        responses.sendResponse(res, 'Auth Failed', constants.STATUS_CODES.UNAUTHORIZED)
    }
};

module.exports.teacher = (req, res, next) => {
    try {
        var token = req.headers.authorization;
        const decoded = jwt.verify(token, secret_key1);
        req.user = decoded;
        req.teacher_id = req.user.teacher_id
        next();
    } catch (error) {
        responses.sendResponse(res, 'Auth Failed', constants.STATUS_CODES.UNAUTHORIZED)
    }
};
