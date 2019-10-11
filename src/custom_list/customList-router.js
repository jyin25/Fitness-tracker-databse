const express = require('express')
const {requireAuth} = require('../auth/jwt-auth')
const CustomListServices = require('./customList-services')


const customListRouter = express.Router()
const jsonBodyParser = express.json()

customListRouter
  .route('/')
  .all(requireAuth)
  .post(jsonBodyParser, (req, res, next) => {
    const id = req.user.id
    const customExerciseList = req.body.exercise_id.map(data => ({
      exercise_id: data, user_id: id, max_value_1: null, max_value_2: null,
      max_value_3: null, max_value_4: null, max_value_5: null,
      max_value_6: null, max_value_7: null, max_value_8: null, max_value_9: null,
      max_value_10: null, max_value_11: null, max_value_12: null}))
    CustomListServices.insertList(req.app.get('db'), customExerciseList, id)
      .then(data => res.json(data))
  })
  .get((req, res, next) => {
    const id = req.user.id
    CustomListServices.getCustomList(req.app.get('db'), id)
      .then(data => res.json(data))
  })

customListRouter
  .route('/insert_custom_weights')
  .all(requireAuth)
  .patch(jsonBodyParser, (req, res, next) => {
    const {id, max_value_1, max_value_2, 
      max_value_3, max_value_4, max_value_5, max_value_6, 
      max_value_7, max_value_8, max_value_9, max_value_10,
      max_value_11, max_value_12} = req.body
    CustomListServices.updateMaxVal(req.app.get('db'), id, max_value_1, max_value_2, max_value_3, max_value_4, max_value_5, max_value_6, max_value_7, max_value_8, max_value_9, max_value_10, max_value_11, max_value_12)
      .then(data => res.json(data))
  })

module.exports = customListRouter