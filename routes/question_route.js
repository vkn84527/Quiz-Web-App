
module.exports = app => {

    const question = require('../modules/controllers/question');
    const checkAuth = require('../middleware/checkAuth')

    app.post('/add_question', checkAuth.teacher,question.add_question )
    app.post('/update_question', checkAuth.teacher,question.update_question )
    app.post('/delete_question', checkAuth.teacher,question.delete_question)
    app.post('/see_available_question',question.see_question)
    app.post('/add_question_option',checkAuth.teacher,question.add_question_option)
    app.post('/update_question_option',checkAuth.teacher,question.update_question_option)

}

