const responce = require('../common_functions/responses')
const status_code = require('../constants/constants')
const execute_query = require('./db_query').execute_query
const hash_service = require('../common_functions/hashing');
const jwt = require('jsonwebtoken')
var secret_key = process.env.secret_key


module.exports.register = async function (req, res) {
  try {
    var sql_query = 'SELECT * FROM student WHERE student_email = ?'
    var values = [req.body.student_email]
    var results = await execute_query(sql_query, values)

    if (results.length !== 0) {
      return responce.sendResponse(res, "Email already Registered", status_code.STATUS_CODES.BAD_REQUEST);
    }
    else {
      var hash = await hash_service.hash_password(req.body.student_password)
      var sql_query = 'INSERT INTO student(student_name,student_phone,student_email,student_password) values(?,?,?,?)'
      var values = [req.body.student_name, req.body.student_phone, req.body.student_email, hash]
      const results = await execute_query(sql_query, values)

      if (results) {
        console.log("Student registered sucessfully.........")
        console.log("Email send on your Mail :)")
        //sendmail.ab2() 

        const user = { student_email: req.body.student_email, student_id: results.insertId }

        token = jwt.sign(user, secret_key)

        return responce.sendtokenstudentResponse(res, 'Student registered sucessfully', token, req.body.student_email, results.insertId, status_code.STATUS_CODES.SUCCESS)
      }
      else {
        return responce.sendResponse(res, 'Please Enter all Required Filed', status_code.STATUS_CODES.UNAUTHORIZED)
      }
    }
  }
  catch {
    return responce.sendResponse(res, 'There are some error with query', status_code.STATUS_CODES.UNAUTHORIZED)
  }
}

module.exports.login = async function (req, res) {
  try {
    var sql_query = 'SELECT * FROM student WHERE student_email = ?'
    var values = [req.body.student_email]
    var results = await execute_query(sql_query, values)

    if (results.length === 0) {
      return responce.sendResponse(res, "Email Not Registered", status_code.STATUS_CODES.BAD_REQUEST);
    }
    else {
      const user = { student_email: req.body.student_email, student_id: results[0].student_id }
      var result = await hash_service.compare_password(req.body.student_password, results[0].student_password);

      if (result) {
        token = jwt.sign(user, secret_key)
        responce.sendtokenstudentResponse(res, 'Auth Successful', token, req.body.student_email, results[0].student_id, status_code.STATUS_CODES.SUCCESS)
      }
      else {
        return responce.sendResponse(res, "Invalid password", status_code.STATUS_CODES.UNAUTHORIZED);
      }
    }
  }
  catch {
    responce.sendResponse(res, "Some Error", status_code.STATUS_CODES.BAD_REQUEST);
  }
}


module.exports.logout = function (req, res) {
  return responce.sendResponse(res, 'successfully logout', status_code.STATUS_CODES.SUCCESS)
}





