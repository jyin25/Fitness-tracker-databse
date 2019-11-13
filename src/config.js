module.exports = {
  PORT: process.env.PORT || 8000,
  NODE_ENV: process.env.NODE_ENV || 'development',
  DATABASE_URL: process.env.DATABASE_URL || 'postgres://buqbihkclsegge:659260a0c354616a424b064b54370b842b2cad5b1ad71f038225649253fb749f@ec2-54-163-230-199.compute-1.amazonaws.com:5432/de9gp1dem6qufn',
  JWT_SECRET: process.env.JWT_SECRET || 'change-this-secret'
}