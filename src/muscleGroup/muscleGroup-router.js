const express = require('express')
const {requireAuth} = require('../auth/jwt-auth')
const MuscleGroupService = require('./muscleGroup-service')

const muscleGroupRouter = express.Router()

muscleGroupRouter
  .route('/')
  .all(requireAuth)
  .get((req, res, next) => {
    MuscleGroupService.getAllMuscleGroup(req.app.get('db'))
      .then(data => res.json(data))
  })

muscleGroupRouter
  .route('/:id')
  .all(requireAuth)
  .get((req, res, next) => {
    console.log(req.params)
    MuscleGroupService.getById(req.app.get('db'), req.params.id)
      .then(data => res.json(data))
  })
module.exports = muscleGroupRouter