module.exports = app => {
    const teacher = require('../modules/controllers/teacher');
    const validate = require('../middleware/register_validation')
    const loginValidation = require('../middleware/login_validation')

    app.post('/teacher_register',validate.teacherValidation, teacher.register);
    app.post('/teacher_login',loginValidation.teacherloginValidation, teacher.login);
    app.post('/teacher_logout', teacher.logout);

}