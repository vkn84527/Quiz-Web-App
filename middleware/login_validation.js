const joi = require("joi");
const responses = require('../modules/common_functions/responses')
const constants = require('../modules/constants/constants')

const validation = joi.object({
    email: joi.string().email().required(),
    password: joi.string().min(5).required()
});

const studentloginValidation = async (req, res, next) => {
    const payload = {
        email: req.body.student_email,
        password: req.body.student_password
    };

    const { error } = validation.validate(payload);
    if (error) {
        responses.sendResponse(res, `Error in Student Data : ${error.message}`, constants.STATUS_CODES.UNAUTHORIZED)
    } else {
        next();
    }
};

const teacherloginValidation = async (req, res, next) => {
    const payload = {
        email: req.body.teacher_email,
        password: req.body.teacher_password

    };

    const { error } = validation.validate(payload);
    if (error) {
        responses.sendResponse(res, `Error in teacher Data : ${error.message}`, constants.STATUS_CODES.UNAUTHORIZED)
    } else {
        next();
    }
};

module.exports = { studentloginValidation, teacherloginValidation }