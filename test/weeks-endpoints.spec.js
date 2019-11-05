const knex = require('knex')
const token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjo4LCJpYXQiOjE1NzI5MzM0NjksInN1YiI6Ikp5aW4yNTU1In0.m1LfQ_xuLks353Uq5P34wZ-OEcwDHMelEOAVLD4ZHQc'
const app = require('../src/app')
const {makeUserArray, makeWeeks} = require('./helper')

describe('Weeks Endpoint', function() {
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

  describe('GET weeks', () => {
    const testUser = makeUserArray();
    const testWeeks = makeWeeks();
    const expectVal = [
      {id: 1, week_number: 1},
      {id: 2, week_number: 2}
    ]

    beforeEach('insert Users', () => {
      return db
        .insert(testUser)
        .into('fit_users')
        .then(() => {
          return db
            .into('weeks_table')
            .insert(testWeeks)
        })
    })

    it('responds with 200', () => {
      return supertest(app)
        .get('/api/weeks')
        .set({'Authorization': `Bearer ${token}`})
        .expect(200, expectVal)
    })
  })

  describe('GET weeksid', () => {
    const testUser = makeUserArray();
    const testWeeks = makeWeeks();
    const expectVal = [
      {id: 1, week_number: 1}
    ]

    beforeEach('insert Users', () => {
      return db
        .insert(testUser)
        .into('fit_users')
        .then(() => {
          return db
            .into('weeks_table')
            .insert(testWeeks)
        })
    })

    it('responds with 200', () => {
      return supertest(app)
        .get('/api/weeks/1')
        .set({'Authorization': `Bearer ${token}`})
        .expect(200)
    })
  })

})