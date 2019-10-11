const express = require('express')
const {requireAuth} = require('../auth/jwt-auth')
const weeksService = require('./weeks-service')

const weeksRouter = express.Router()

weeksRouter
  .route('/')
  .all(requireAuth)
  .get((req, res, next) => {
    const id = req.user.id
    weeksService.getAllWeeks(req.app.get('db'), id)
      .then(weeks => res.json(weeks))
  })

weeksRouter
  .route('/:weekid')
  .all(requireAuth)
  .get((req, res, next) => {
    weeksService.getWeekDays(req.app.get('db'), req.params.weekid)
      .then(days => res.json(days))
  })

weeksRouter
  .route('/:weekid/:dayid')
  .all(requireAuth)
  .get((req, res, next) => {
    weeksService.getDayExerices(req.app.get('db'), req.params.dayid)
      .then(exercises => res.json(exercises))
  })

module.exports = weeksRouter