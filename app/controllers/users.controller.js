const User = require('../models/users.model.js');

// Create new user and save to db

exports.create = (req, res) => {
  if (!req.body) {
    res.status(400).send({
      message: "Content can not be empty!"
    });
  }

  if(!req.body.name) {
    res.status(400).send({
        message: "Name can not be empty!"
      });
  }

  if(!req.body.email) {
    res.status(400).send({
        message: "Email can not be empty!"
      });
  }

  if(!req.body.password) {
    res.status(400).send({
        message: "Password can not be empty!"
      });
  }

  const user = new User({
    name: req.body.name,
    email: req.body.email,
    password: req.body.password
  });

  User.create(user, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Some error occurred while creating the User."
      });
    else res.send(data);
  });
};


// Login and create token

exports.login = (req, res) => {
    if (!req.body) {
        res.status(400).send({
          message: "Content can not be empty!"
        });
    }

    if(!req.body.email) {
        res.status(400).send({
            message: "Email can not be empty!"
          });
    }
    
    if(!req.body.password) {
        res.status(400).send({
            message: "Password can not be empty!"
          });
    }

    const user = new User({
        email: req.body.email,
        password: req.body.password
    });

    User.login(user, (err, data) => {
        if (err)
          res.status(500).send({
            message:
              err.message || "Some error occurred while logging in"
          });
        else res.send(data);
      });

}