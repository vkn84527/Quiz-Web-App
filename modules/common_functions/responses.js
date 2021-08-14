const { json } = require("body-parser")

const sendResponse = (res, msg, status) => {
    return res.json({
        message: msg,
        status: status
    })
}

const sendmessResponse = (res, msg, ques, status) => {
    
    return res.json({
        message: msg,
        Questions: ques,
        status: status
    })
}

const sendtokenstudentResponse = (res, msg, token, student_email, student_id, status) => {
    return res.json({
        Message: msg,
        Token: token,
        student_email: student_email,
        student_ID: student_id,
        Status: status
    })
}

const sendtokenteacherResponse = (res, msg, token, teacher_email, teacher_id, status) => {
    return res.json({
        Message: msg,
        Token: token,
        teacher_email: teacher_email,
        teacher_ID: teacher_id,
        Status: status
    })
}

module.exports = { sendResponse, sendmessResponse, sendtokenstudentResponse, sendtokenteacherResponse }
