require('dotenv').config();

module.exports = {
  "migrationDirectory": "migrations",
  "driver": "pg",
  "host": "ec2-54-235-246-201.compute-1.amazonaws.com",
  "port": process.env.MIGRATION_DB_PORT,
  "database": "d9v0ri4ajqhm2l",
  "username": "aagakeczvglacb",
  "password": "e4d9b3c36393a2ea10460b64ddb37a602fe7ef41a891fefc51b8afb4cf9fa149",
  "connectionString": (process.env.NODE_ENV === 'test')
    ? process.env.TEST_DATABASE_URL
    : process.env.DATABASE_URL,
  "ssl": "true",
}
