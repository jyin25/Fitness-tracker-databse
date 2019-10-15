const express = require('express')
const UserService = require('./users-service')

const userRouter = express.Router()
const jsonBodyParser = express.json()


userRouter
  .post('/', jsonBodyParser, (req, res, next) => {
    console.log(req.body)
    const {full_name, user_name, password} = req.body

    if(!req.body.full_name)
      return res.status(400).json({
        error: `Missing full_name in request body`
      })

    if(!req.body.user_name)
      return res.status(400).json({
        error: `Missing full_name in request body`
      })

    if(!req.body.password)
      return res.status(400).json({
        error: `Missing full_name in request body`
      })

    const passwordError = UserService.validatePassword(password)

    if(passwordError)
      return res.status(400).json({ error: passwordError })

    const weeks = [1,2,3,4,5,6,7,8,9,10,11,12]

    const days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']

    const firstMondayExercises = [51, 53, 54, 41, 42, 81, 82]
    const firstTuesdayExercises = [62, 63, 64, 21, 111, 22, 71, 72]
    const firstWednesdayExercises = [12, 11, 13, 122, 31, 32, 33]
    const firstThursdayExercises = [131]
    const firstFridayExercises = [55, 56, 43, 44, 83, 84]
    const firstSaturdayExercises = [65, 66, 61, 23, 112, 71, 72]
    const firstSundayExercises = [91, 92, 93, 121, 34, 35]

    // const firstMondayExercises = [1, 3, 4, 5, 6, 7, 8]
    // const firstTuesdayExercises = [9, 10, 11, 12, 13, 14, 15, 16]
    // const firstWednesdayExercises = [32, 33, 34, 35, 36, 37, 38]
    // const firstThursdayExercises = [131]
    // const firstFridayExercises = [17, 18, 19, 20, 21, 22]
    // const firstSaturdayExercises = [24, 25, 9, 26, 27, 15, 16]
    // const firstSundayExercises = [28, 29, 30, 31, 39, 40]


    UserService.hasUserWithUserName(req.app.get('db'), req.body.user_name)
      .then(hasUserWithUserName => {
        if(hasUserWithUserName)
          return res.status(400).json({error: 'Username already taken'})
      })

    UserService.hashPassword(password)
      .then(hashedPassword => {
        const newUser = {
          user_name,
          full_name,
          password: hashedPassword,
        }
        return UserService.insertUser(req.app.get('db'), newUser, weeks)
          .then(user => {
            const id = user.id
            const userWeeks = weeks.map(data => ({week_number: data, userid: id}))
            return UserService.insertWeeks(req.app.get('db'), userWeeks)
              .then(weeks => {
                console.log(weeks)
                const weekDays = weeks.map(data => {
                  return days.map(daysData => ({day_name: daysData, weekid: data.id}))
                })
    
                const combinedDays = weekDays.concat.apply([], weekDays)
                return UserService.insertDays(req.app.get('db'), combinedDays)
                  .then((days) => {
    
                    days.map((data, index) => {
                      if ( index >= 0 && index <= 83) {

                        if (data.day_name === 'Monday') {
                          const firstMonObj = firstMondayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstMonObj)
                            .then(data => data)
                        }
                        if (data.day_name === 'Tuesday') {
                          const firstTuesObj = firstTuesdayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstTuesObj)
                            .then(data => data)
                        }

                        if (data.day_name === 'Wednesday') {
                          const firstWedsObj = firstWednesdayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstWedsObj)
                            .then(data => data)
                        }

                        if (data.day_name === 'Thursday') {
                          const firstThursObj = firstThursdayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstThursObj)
                            .then(data => data)
                        }

                        if (data.day_name === 'Friday') {
                          const firstFriObj = firstFridayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstFriObj)
                            .then(data => data)
                        }

                        if (data.day_name === 'Saturday') {
                          const firstSatObj = firstSaturdayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstSatObj)
                            .then(data => data)
                        }

                        if (data.day_name === 'Sunday') {
                          const firstSunObj = firstSundayExercises.map(id => ({exercise_id: id, max_value: null, day_id: data.id, user_id: user.id}))
                          return UserService.insertTracking(req.app.get('db'), firstSunObj)
                            .then(data => data)
                        }
                      }
                      // if(index >= 28 && index <= 55) {
    
                      // }
                      // if(index >= 56 && index <= 83) {
                        
                      // }
                    })
                  })
                  .then(data => {
                    res
                      .status(201)
                      .json(UserService.serializeUser(user))
                  })
              })
          })
      })
      .catch(next)
  })
module.exports = userRouter