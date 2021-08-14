
module.exports = app => {

    const quiz = require('../modules/controllers/play_quiz');
    const checkAuth = require('../middleware/checkAuth')

    app.post('/play_quiz', checkAuth.student,quiz.play_quiz)
    app.post('/question_wise_details',checkAuth.student,quiz.question_wise_details)
    app.post('/total_quiz_score', checkAuth.student,quiz.total_quiz_score)

}

