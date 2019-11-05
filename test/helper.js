function makeUserArray() {
  return [
    {
      id: 1,
      full_name: 'test1',
      user_name: 'Jyin2555',
      date_created: new Date('2029-01-22T16:28:32.615Z'),
      password: '$2a$12$9iQcz4mGJ/L7FJRjuUISg.l9WcgyoTpNR1XQGtDPPK3vtcJFScxuO'
    }
  ]
}

function makeWeeks() {
  return [
    {
      id: 1,
      week_number: 1,
      userid: 1
    },
    {
      id: 2,
      week_number: 2,
      userid: 1
    }
  ]
}

function makeMuscleGroup() {
  return [
    {
      id: 1,
      muscle_name: 'test',
      muscle_pictures: 'test'
    }
  ]
}

function makeExerciseId() {
  return [
    {
      id: 1,
      exercise_name: 'test',
      exercise_how_to: 'test',
      muscle_group_id: 1,
      video: 'test',
      is_check: false
    }
  ]
}

function makeCustomList() {
  return [
    {
      id: 1,
      max_value_1: 1,
      max_value_2: 1,
      max_value_3: 1,
      max_value_4: 1,
      max_value_5: 1,
      max_value_6: 1,
      max_value_7: 1,
      max_value_8: 1,
      max_value_9: 1,
      max_value_10: 1,
      max_value_11: 1,
      max_value_12: 1,
      exercise_id: 1,
      date_created: new Date('2029-01-22T16:28:32.615Z'),
      user_id: 1

    }
  ]
}

function makeDays() {
  return [
    {
      id: 1,
      day_name: 'Monday',
      weekid: 1
    }
  ]
}

function makeExerciseTracking() {
  return [
    {
      id: 1,
      max_value: 1,
      exercise_id: 1,
      day_id: 1,
      user_id: 1,
      date_created: new Date('2029-01-22T16:28:32.615Z')
    }
  ]
}

module.exports = {
  makeUserArray,
  makeWeeks,
  makeMuscleGroup,
  makeCustomList,
  makeExerciseId,
  makeDays,
  makeExerciseTracking
}