const weightsService = {
  insertWeights(db, id, max_value) {
    return db('exercise_tracking')
      .where({id})
      .update({max_value})
      .then(value => value)
  },
  getSavedWeights(db, user_id) {
    return db('exercise_tracking')
      .join('days_table', 'days_table.id', '=', 'exercise_tracking.day_id')
      .join('exercises_table', 'exercises_table.id', '=', 'exercise_tracking.exercise_id')
      .where('user_id', user_id)
      .select('exercise_tracking.max_value', 'exercise_tracking.id', 'days_table.day_name', 'exercises_table.exercise_name')
      .then(data => data)
  }
}

module.exports = weightsService
