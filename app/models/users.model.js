const sql = require("./db.js");
const uuid = require("uuid");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
const config = require("../config/auth.config.js");


// constructor
const User = function(user) {
    this.email = user.email;
    this.password = user.password;
    this.name = user.name;
};

User.create = (newUser, result) => {
    const user_id = uuid.v4();
    const cart_id = uuid.v4();
    const saltRounds = 10;
    sql.query("select * from users where email='" + newUser.email + "';", (err, res) => {
        if(err) {
            result(err, null);
            return;
        }
        if(res && res.length > 0) {
            err = {
                message: 'User already exists with email'
            }
            result(err, null);
        } else {
            bcrypt.hash(newUser.password, saltRounds, function(err, hash) {
                if(!err) {
                    sql.query("INSERT INTO users (" + "user_id, " + "email,"+ "password,"+ "cart_id," + "user_name" + ") VALUES (?, ?, ?, ?, ?)", [user_id, newUser.email, hash, cart_id, newUser.name], (err, res) => {
                        if (err) {
                            result(err, null);
                            return;
                        }
                        result(null, 'created user successfully');
                    });
                }
            });
        }
    });
}

User.login = (user, result) => {
    sql.query("select * from users where email='" + user.email + "';", (err, res) => {
        if(err) {
            result(err, null);
            return;
        }
        if(res && res.length === 0) {
            err = {
                message: 'Invalid username or password'
            }
            result(err, null);
        } else {
            const userData = res[0];
            const passwordHash = userData.password;
            const userId = userData.user_id;
            bcrypt.compare(user.password, passwordHash, function(err,  isPasswordMatched) {  
               if(!isPasswordMatched || err) {
                 result({message: 'Invalid password for this email'}, null);
               }
               const token = jwt.sign({id: userId}, config.secret, {expiresIn: '2h'});
               userData['token'] = token;
               delete userData['password'];
               delete userData['id'];
               result(null, res[0]);
            });
        }
    });
}

module.exports = User;