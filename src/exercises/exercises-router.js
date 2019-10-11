const express = require('express')
const ExerciseService = require('./exercise-service')
const {requireAuth} = require('../auth/jwt-auth')

const exerciseRouter = express.Router()

exerciseRouter
  .route('/')
  .all(requireAuth)
  .get((req, res, next) => {
    ExerciseService.getAllData(req.app.get('db'))
      .then(exercises => res.json(exercises))
  })

module.exports = exerciseRouter