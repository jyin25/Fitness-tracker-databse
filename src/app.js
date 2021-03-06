require('dotenv').config();

const express = require('express');
const morgan = require('morgan');
const cors = require('cors');
const helmet = require('helmet');
const { NODE_ENV } = require('./config')
const userRouter = require('./users/users-router')
const authRouter = require('./auth/auth-router')
const weeksRouter = require('./weeks/weeks_route')
const weightsRouter = require('./saveWeights/weights-router')
const muscleGroupRouter = require('./muscleGroup/muscleGroup-router')
const customListRouter = require('./custom_list/customList-router')

const app = express();

const morganOption = (NODE_ENV === 'production')
  ? 'tiny'
  : 'common';

app.use(morgan(morganOption));
app.use(helmet());
app.use(cors());


app.use('/api/users', userRouter)
app.use('/api/login', authRouter)
app.use('/api/weeks', weeksRouter)
app.use('/api/insertweights', weightsRouter)
app.use('/api/musclegroup', muscleGroupRouter)
app.use('/api/customlist', customListRouter)

app.use(function errorHandler(error, req, res, next) {
    let response
    if (NODE_ENV === 'production') {
      response = { error: { message: 'server error' } }
    } else {
      console.error(error)
      response = { message: error.message, error }
    }
    res.status(500).json(response)
  })

module.exports = app;