const CustomListServices = {
  insertList(db, customExerciseList) {
    return db
      .into('custom_list')
      .insert(customExerciseList)
      .returning('*')
      .then(data => data)
  },
  getCustomList(db, user_id) {
    return db
      .from('exercises_table')
      .join('custom_list', 'exercises_table.id', '=', 'custom_list.exercise_id')
      .where('user_id', user_id)
      .select('*')
      .then(data => data)
  },
  updateMaxVal(db, id, max_value_1, max_value_2, max_value_3, max_value_4, max_value_5, max_value_6, max_value_7, max_value_8, max_value_9, max_value_10, max_value_11, max_value_12) {
    return db('custom_list')
      .where({id})
      .update({max_value_1})
      .update({max_value_2})
      .update({max_value_3})
      .update({max_value_4})
      .update({max_value_5})
      .update({max_value_6})
      .update({max_value_7})
      .update({max_value_8})
      .update({max_value_9})
      .update({max_value_10})
      .update({max_value_11})
      .update({max_value_12})
      .then(data => data)  
  },
  deleteWorkout(db, id) {
    return db('custom_list')
      .where({id})
      .delete()
  }
}

module.exports = CustomListServices