const express = require('express')
const {requireAuth} = require('../auth/jwt-auth')
const WeightsService = require('./weights-service')

const weightsRouter = express.Router()
const jsonBodyParser = express.json()

weightsRouter
  .route('/')
  .all(requireAuth)
  .patch(jsonBodyParser, (req, res, next) => {
    const {id, max_value} = req.body
    WeightsService.insertWeights(req.app.get('db'), id, max_value)
      .then(data => res.json(data))
  })
  .get((req, res, next) => {
    const id = req.user.id
    WeightsService.getSavedWeights(req.app.get('db'), id)
      .then(data => res.json(data))
  })

module.exports = weightsRouter