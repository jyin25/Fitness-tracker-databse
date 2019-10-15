const express = require('express')
const AuthService = require('./auth-service')

authRouter = express.Router()
const jsonBodyParser = express.json()

authRouter
  .post('/', jsonBodyParser, (req, res, next) => {
    const {user_name, password} = req.body
    const loginUser = {user_name, password}

    for(const [key, value] of Object.entries(loginUser))
      if(value == null)
        return res.status(400).json({
          error: `Missing '${key}' in request body`
        })
    
    AuthService.getUserWithUserName(req.app.get('db'), user_name)
      .then(dbUser => {
        if(!dbUser)
          return res.status(400).json({
<<<<<<< HEAD
            error: 'Incorrect Username or Password'
=======
            error: 'Incorrect username or password'
>>>>>>> e2104d286a2e6b4c25d0816ca6ade2a7f2b152a4
          })
        return AuthService.comparePasswords(loginUser.password, dbUser.password)
          .then(compare => {
            if (!compare)
              return res.status(400).json({
<<<<<<< HEAD
                error: 'Incorrect Username or Password'
=======
                error: 'Incorrect username or password'
>>>>>>> e2104d286a2e6b4c25d0816ca6ade2a7f2b152a4
              })

            const subject = dbUser.user_name
            const payload = {user_id: dbUser.id}
            res.send({
              authToken: AuthService.createJwt(subject, payload),
            })
          })
      })
      .catch(next)
  })

module.exports = authRouter