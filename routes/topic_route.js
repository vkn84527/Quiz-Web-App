
module.exports = app => {

    const topic = require('../modules/controllers/topic');
    const checkAuth = require('../middleware/checkAuth')

    app.post('/add_topic', checkAuth.teacher,topic.add_topic )
    app.post('/update_topic', checkAuth.teacher,topic.update_topic )
    app.post('/delete_topic', checkAuth.teacher,topic.delete_topic)
    app.post('/see_available_topic',topic.see_topic)

}

