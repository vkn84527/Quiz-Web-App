const execute_query = require('./db_query').execute_query
const responses = require('../common_functions/responses')
const constants = require('../constants/constants')

module.exports.play_quiz = async function (req, res) {
    try {
        var sql_query1 = 'select correct_opt from ques_option where ques_id=?'
        var values1 = [req.body.ques_id];
        var results1 = await execute_query(sql_query1, values1)
        var cur_score=0
        student_option=req.body.student_option
        if(results1[0].correct_opt==student_option){
            cur_score=1
        }
        else{
            cur_score=0
        }
        student_id = req["student_id"]
        var sql_query = 'insert into answer (student_id	,ques_id,student_option,score)values(?,?,?,?)'
        var values = [student_id,req.body.ques_id,student_option,cur_score];

        var results = await execute_query(sql_query, values)
        if(cur_score==0){
        responses.sendResponse(res, `Your Option is wrong and correct option is ${results1[0].correct_opt}`, constants.STATUS_CODES.SUCCESS)
        }
        else{
            responses.sendResponse(res, "Congratulation!! Your Option is correct", constants.STATUS_CODES.SUCCESS)
        }
    }
    catch {
        responses.sendResponse(res, "Some error in you query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.total_quiz_score = async function (req, res) {
    try {
        student_id = req["student_id"]
        var sql_query1 = 'select correct_opt from ques_option where ques_id=?'
        var values = [student_id];

        var results = await execute_query(sql_query, values)
        if(cur_score==0){
        responses.sendResponse(res, `Your Option is wrong and correct option is ${results1[0].correct_opt}`, constants.STATUS_CODES.SUCCESS)
        }
        else{
            responses.sendResponse(res, "Congratulation!! Your Option is correct", constants.STATUS_CODES.SUCCESS)
        }
    }
    catch {
        responses.sendResponse(res, "Some error in you query", constants.STATUS_CODES.NOT_FOUND)
    }
}



