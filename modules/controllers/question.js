const execute_query = require('./db_query').execute_query
const responses = require('../common_functions/responses')
const constants = require('../constants/constants')

module.exports.add_question = async function (req, res) {
    try {
        var sql_query = 'insert into question (topic_id,your_question)values(?,?)'
        var values = [req.body.topic_id, req.body.your_question];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully added question", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some error in you query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.update_question = async function (req, res) {
    try {
        var sql_query = 'update question set your_question=? where topic_id=? and ques_id=?'
        var values = [req.body.your_question,req.body.topic_id,req.body.ques_id];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully Update question", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.delete_question = async function (req, res) {
    try {
        var sql_query = 'delete from question where ques_id=?'
        var values = [req.body.ques_id];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully Deleted question", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.see_question = async function (req, res) {
    try {
        var sql_query = 'select * from question where topic_id=?'
        var values = [req.body.topic_id];

        var results = await execute_query(sql_query, values)
        
        responses.sendmessResponse(res, `These are available Qestion in Topic_Id : ${req.body.topic_id}`,results, constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}

module.exports.add_question_option = async function (req, res) {
    try {
        var sql_query = 'insert into ques_option (ques_id,opt_A,opt_B,opt_C	,opt_D,correct_opt)values(?,?,?,?,?,?)'
        var values = [req.body.ques_id,req.body.opt_A,req.body.opt_B,req.body.opt_C	,req.body.opt_D,req.body.correct_opt];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully added question_options and correct option", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some error in you query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.update_question_option = async function (req, res) {
    try {
        var sql_query = 'update ques_option set opt_A=?,opt_B=?,opt_C=?,opt_D=?,correct_opt=? where ques_id=?'
        var values = [req.body.opt_A,req.body.opt_B,req.body.opt_C,req.body.opt_D,req.body.correct_opt,req.body.ques_id];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully Update question_option", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}
