const sendmail = require('../service/teacher_mail')
const responce = require('../common_functions/responses')
const status_code = require('../constants/constants')
const execute_query = require('./db_query').execute_query
const hash_service = require('../common_functions/hashing');
const jwt = require('jsonwebtoken')
var secret_key1 = process.env.secret_key1

module.exports.login = async function (req, res) {
    try {
        var sql_query = 'SELECT * FROM teacher WHERE teacher_email = ?';
        var values = [req.body.teacher_email]
        var results = await execute_query(sql_query, values)

        if (results.length === 0) {
            return responce.sendResponse(res, "Email Not Registered", status_code.STATUS_CODES.UNAUTHORIZED);
        }
        else {
            const user = { teacher_email: req.body.teacher_email, teacher_id: results[0].teacher_id }
            //console.log(user)
            var check_pass = await hash_service.compare_password(req.body.teacher_password, results[0].teacher_password)
            if (check_pass) {
                token = jwt.sign(user, secret_key1)
                responce.sendtokenteacherResponse(res, 'Auth Successful', token, req.body.teacher_email, results[0].teacher_id, status_code.STATUS_CODES.SUCCESS)

            } else {
                return responce.sendResponse(res, "Wrong Password", status_code.STATUS_CODES.BAD_REQUEST);
            }
        }
    }
    catch {
        responce.sendResponse(res, 'There are some error with query', status_code.STATUS_CODES.UNAUTHORIZED)
    }
}

module.exports.register = async function (req, res) {
    try {
        var sql_query = 'SELECT * FROM teacher WHERE teacher_email = ?';
        var values = [req.body.teacher_email]
        var results = await execute_query(sql_query, values)

        if (results.length !== 0) {
            return responce.sendResponse(res, "Email already Registered", status_code.STATUS_CODES.UNAUTHORIZED);
        } else {
            var hash = await hash_service.hash_password(req.body.teacher_password)
            var sql_query = 'INSERT INTO teacher (teacher_name,teacher_email,teacher_password,teacher_phone)values(?,?,?,?)'
            var values = [req.body.teacher_name, req.body.teacher_email, hash, req.body.teacher_phone]
            var results = await execute_query(sql_query, values)

            if (results) {
                console.log("Teacher registered sucessfully.........")
                console.log("Email send on your Registered_Mail :)")
                //sendmail.ab()
                const user = { teacher_email: req.body.teacher_email, teacher_id: results.insertId }
                token = jwt.sign(user, secret_key1)

                responce.sendtokenteacherResponse(res, 'Teacher registered sucessfully', token, req.body.teacher_email, results.insertId, status_code.STATUS_CODES.SUCCESS)
            }
            else {
                responce.sendResponse(res, 'Please Enter all Required Filed', status_code.STATUS_CODES.BAD_REQUEST)
            }
        }
    } catch {
        responce.sendResponse(res, 'There are some error with query', status_code.STATUS_CODES.BAD_REQUEST)
    }
}


module.exports.logout = function (req, res) {
    return responce.sendResponse(res, 'Teacher successfully logout', status_code.STATUS_CODES.SUCCESS)
}


































