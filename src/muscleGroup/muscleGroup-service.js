const muscleGroupService = {
  getAllMuscleGroup(db) {
    return db
      .from('muscle_group_table')
      .select('*')
      .then(group => group)
  },
  getById(db, id) {
    return db
      .from('muscle_group_table')
      .join('exercises_table', 'exercises_table.muscle_group_id', '=', 'muscle_group_table.id')
      .select('*')
      .where('muscle_group_table.id', id)
      .then(data => data)
  }

}

module.exports = muscleGroupService