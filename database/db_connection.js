var mysql = require('mysql');
require('dotenv').config();

const host = process.env.HOST
const user = process.env.USER
const password = process.env.PASSWORD
const database = process.env.DATABASE

const connection = mysql.createConnection({
    host: host,
    user: user,
    password: password,
    database: database
});

connection.connect(function (err) {
    if (!err) {
        console.log("Database is connected");
    }
    else {
        console.log("Error while connecting with database");
    }
});

module.exports = connection;
