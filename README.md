# Fit Tracker Database

Live App: https://fitness-tracker-master.jyin25.now.sh

Client Repo: https://github.com/jyin25/Fitness-Tracker


## About
Fit Tracker is a tool that help users keep track of the weights they lift throughout 12 weeks. 

Users have the option to set their own exercises to track or use the preselected exercises. 


## Technologies Used:

Front-end: React, HTML/CSS, Javascript

Back-end: Node.js, Express, PostgreSQL


## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`


## POST api/users
```
[
  {
    "full_name": String,
    "user_name": String,
    "password": String
  }
]
```


## GET api/exerciselist
```
[
  {
    "id": Number,
    "muscle_name": String,
    "muscle_pictures": String,
    "exercise_name": String,
    "exercise_how_to": String,
    "muscle_group_id": Number,
    "video": String,
    "is_check": boolean
  }
]
```


## POST /api/login
```
[
  {
    "user_name": String,
    "password": String
  }
]
```


## Get /api/weeks
```
[
  {
    "id": Number,
    "week_number": Number
  }
]
```


## PATCH /api/insertweights
```
[
  {
    "max_value": Number,
    "id": Number,
  }
]
```


## GET /api/insertweights
```
[
  {
    "max_value": Number,
    "id": Number,
    "day_name": String,
    "exercise_name": String
  }
]
```


## GET /api/musclegroup
```
[
  {
    "id": Number,
    "muscle_name": String,
    "muscle_pictures": String
  }
]
```


## GET /api/customlist
```
[
  {
    "id": Number,
    "exercise_name": String,
    "exercise_how_to": String,
    "muscle_group_id": Number,
    "video": String,
    "is_check": Boolean,
    "exercise_id": Number,
    "date_created": String,
    "user_id": Number,
    "max_value_1": Number,
    "max_value_2": Number,
    "max_value_4": Number,
    "max_value_5": Number,
    "max_value_6": Number,
    "max_value_7": Number,
    "max_value_8": Number,
    "max_value_9": Number,
    "max_value_10": Number,
    "max_value_11": Number,
    "max_value_12": Number,
    "max_value_3": Number
  }
]
```


## PATCH /api/customlist
```
[
  {
    "id": Number,
    "max_value_1": Number,
    "max_value_2": Number,
    "max_value_4": Number,
    "max_value_5": Number,
    "max_value_6": Number,
    "max_value_7": Number,
    "max_value_8": Number,
    "max_value_9": Number,
    "max_value_10": Number,
    "max_value_11": Number,
    "max_value_12": Number,
    "max_value_3": Number
  }
]
```


## POST /api/customlist
```
[
  {
    "exercise_id": Number,
  }
]
```


