const ExerciseService = {
  getAllData(db) {
    return db
      .from('muscle_group_table')
      .join('exercises_table', 'exercises_table.muscle_group_id', '=', 'muscle_group_table.id')
      .select('*')
      .then(data => data)
  }
}

module.exports = ExerciseService