const bcrypt = require('bcryptjs')
const xss = require('xss')
const REGEX_UPPER_LOWER_NUMBER_SPECIAL = /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&])[\S]+/

const UsersService = {
  insertWeeks(db, userWeeks) {
    return db
      .insert(userWeeks)
      .into('weeks_table')
      .returning('*')
      .then(weeks => weeks)
  },
  insertUser(db, newUser, weeks) {
    return db
      .insert(newUser)
      .into('fit_users')
      .returning('*')
      .then(([user]) => {
        return user
      })
  },
  insertDays(db, weekDays) {
    return db
      .insert(weekDays)
      .into('days_table')
      .returning('*')
      .then(days => days)
  },
  insertTracking(db, exericses) {
    return db
      .insert(exericses)
      .into('exercise_tracking')
      .returning('*')
      .then(tracking => tracking)
  },
  hasUserWithUserName(db, user_name) {
    return db('fit_users')
      .where({user_name})
      .first()
      .then(user => !!user)
  },
  hashPassword(password) {
    return bcrypt.hash(password, 12)
  },
  serializeUser(user) {
    return {
      id: user.id,
      user_name: xss(user.user_name),
      full_name: xss(user.full_name)
    }
  },
  validatePassword(password) {
    if (password.length < 8) {
      return 'Password must be longer than 8 characters'
    }
    if (password.length > 72) {
      return 'Password must be less than 72 characters'
    }
    if (password.startsWith(' ') || password.endsWith(' ')) {
      return 'Password must not start or end with empty spaces'
    }
    if (!REGEX_UPPER_LOWER_NUMBER_SPECIAL.test(password)) {
      return 'Password must contain 1 upper case, lower case, number and special character'
    }
    return null
  }
}

module.exports = UsersService