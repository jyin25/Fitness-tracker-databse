const knex = require('knex')
const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4LCJpYXQiOjE1NzI5MzM0NjksInN1YiI6Ikp5aW4yNTU1In0.m1LfQ_xuLks353Uq5P34wZ-OEcwDHMelEOAVLD4ZHQc'
const app = require('../src/app')
const {makeExerciseId, makeUserArray, makeDays, makeWeeks, makeMuscleGroup, makeExerciseTracking} = require('../test/helper')

describe('Save Weights Endpoint', function() {
  let db

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: 'postgresql://postgres@localhost/fit-tracker-db-test'
    })
    app.set('db', db)
  })

  after('disconnect from db', () => db.destroy())
  before('cleanup', () => db.raw('TRUNCATE fit_users, weeks_table, days_table, muscle_group_table, exercises_table, exercise_tracking RESTART IDENTITY CASCADE'))
  afterEach('cleanup', () => db.raw('TRUNCATE fit_users, weeks_table, days_table, muscle_group_table, exercises_table, exercise_tracking RESTART IDENTITY CASCADE'))

  describe('GET Saved Weights', () => {
    const testExercise = makeExerciseId();
    const testUser = makeUserArray();
    const testDays = makeDays();
    const testWeeks = makeWeeks();
    const testMuscleGroup = makeMuscleGroup();
    const testExerciseTracking = makeExerciseTracking()

    beforeEach('insert Users', () => {
      return db
        .insert(testUser)
        .into('fit_users')
        .then(() => {
          return db
            .into('weeks_table')
            .insert(testWeeks)
            .then(() => {
              return db
                .into('days_table')
                .insert(testDays)
                .then(() => {
                  return db
                    .into('muscle_group_table')
                    .insert(testMuscleGroup)
                    .then(() => {
                      return db
                        .into('exercises_table')
                        .insert(testExercise)
                        .then(() => {
                          return db
                            .into('exercise_tracking')
                            .insert(testExerciseTracking)
                        })
                    })
                })
            })
        })
    })

    it('responds with 200', () => {
      return supertest(app)
        .get('/api/insertweights')
        .set({'Authorization': `Bearer ${token}`})
        .expect(200)
    })
  })


})