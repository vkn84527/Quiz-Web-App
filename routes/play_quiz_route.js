
module.exports = app => {

    const quiz = require('../modules/controllers/play_quiz');
    const checkAuth = require('../middleware/checkAuth')

    app.post('/play_quiz', checkAuth.student,quiz.play_quiz)

}

