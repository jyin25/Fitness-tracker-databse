module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DATABASE_URL: process.env.DATABASE_URL || 'postgresql://fit_admin@localhost/fit_database',
  JWT_SECRET: process.env.JWT_SECRET || 'change-this-secret',
}