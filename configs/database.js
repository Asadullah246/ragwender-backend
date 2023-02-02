const mysql = require('mysql');

const pool = mysql.createPool({
    connectionLimit: 100,
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASS,
    database: process.env.DB_NAME,
  });

  module.exports = pool; 

//   DB_HOST = 'localhost'
// DB_USER = 'root'
// DB_PASS = ''
// DB_NAME = 'db_rwsecom' 