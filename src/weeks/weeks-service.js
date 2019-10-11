const WeeksService = {
  getAllWeeks(db, userid) {
    return db
      .from('weeks_table')
      .select('id', 'week_number')
      .where({userid})
      .then(data => data)
  },
  getWeekDays(db, weekid) {
    return db
      .from('days_table')
      .select('*')
      .where({weekid})
      .then(days => days)
  },
  getDayExerices(db, day_id) {
    return db
      .from('exercises_table')
      .join('exercise_tracking', 'exercises_table.id', '=', 'exercise_tracking.exercise_id')
      .select('*')
      .where('exercise_tracking.day_id', day_id)
      .then((exercisesList) => exercisesList)
  }
}

module.exports = WeeksService
