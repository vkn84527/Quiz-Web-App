var bcryptjs = require('bcryptjs')
require('dotenv').config();
var salt = 10;


module.exports.hash_password = (password) => {
    return new Promise((resolve, reject) => {
        bcryptjs.hash(password, salt, (err, hash) => {
            if (err) return reject(err);
            resolve(hash)
        })
    })
}
module.exports.compare_password = (password, password_in_database) => {
    return new Promise((resolve, reject) => {
        bcryptjs.compare(password, password_in_database, (err, result) => {
            if (result) {
                resolve(true);
            }
            else if (!result) {
                resolve(false);
            }
            else {
                console.log(err)
                reject(err)
            }
        })
    })
}


