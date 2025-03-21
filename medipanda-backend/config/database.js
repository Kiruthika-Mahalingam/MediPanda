const { Sequelize } = require("sequelize");
require("dotenv").config();

const sequelize = new Sequelize(
  process.env.DB_NAME, 
  process.env.DB_USER, 
  process.env.DB_PASS, 
  {
    host: process.env.DB_HOST,
    dialect: "postgres",
    port: process.env.DB_PORT,
  }
);

// Test database connection
sequelize
  .authenticate()
  .then(() => {
    console.log("✅ Connected to PostgreSQL successfully!");
  })
  .catch((err) => {
    console.error("❌ Unable to connect to the database:", err);
  });

module.exports = sequelize;
