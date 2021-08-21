const execute_query = require('./db_query').execute_query
const responses = require('../common_functions/responses')
const constants = require('../constants/constants')

module.exports.add_topic = async function (req, res) {
    try {
        teacher_id = req["teacher_id"]
        var sql_query1 = 'select topic_name from topic where topic_name=?'
        var values1 = [req.body.topic_name];
        var results1 = await execute_query(sql_query1, values1)
        if(results1.length !== 0)
        {
            responses.sendResponse(res, "This Topic Already present", constants.STATUS_CODES.SUCCESS)
        }
        else{
        var sql_query = 'insert into topic (teacher_id,topic_name)values(?,?)'
        var values = [teacher_id, req.body.topic_name];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully added topic", constants.STATUS_CODES.SUCCESS)
    }
}
    catch {
        responses.sendResponse(res, "Some error in you query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.update_topic = async function (req, res) {
    try {
        teacher_id = req["teacher_id"]
        var sql_query = 'update topic set topic_name=? where teacher_id=? and topic_id=?'
        var values = [req.body.topic_name,teacher_id,req.body.topic_id];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully Update Topic", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.delete_topic = async function (req, res) {
    try {
        var sql_query = 'delete from topic where topic_id=?'
        var values = [req.body.topic_id];

        var results = await execute_query(sql_query, values)
        
        responses.sendResponse(res, "Successfully Deleted Topic", constants.STATUS_CODES.SUCCESS)
    }
    catch {
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}


module.exports.see_topic = async function (req, res) {
    try {
        var sql_query = 'select topic_name from topic where teacher_id=?'
        var values = [req.body.teacher_id];

        var results = await execute_query(sql_query, values)
        responses.sendmessResponse(res, `These Topic are available for this Teacher_id : ${req.body.teacher_id}`,results, constants.STATUS_CODES.SUCCESS)
    }
    catch {
        //console.log(err)
        responses.sendResponse(res, "Some Error in Your Query", constants.STATUS_CODES.NOT_FOUND)
    }
}