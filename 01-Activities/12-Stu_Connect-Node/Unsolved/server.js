const express = require('express');
// import requiring mysql module
const mysql = require('mysql2');


const PORT = process.env.PORT || 3001;
const app = express();
//  experss middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());

// connect to database
const db = mysql.createConnection(
  {
    host: 'localhost',
    // mysql username
    user: 'root',
    //  Mysql password
    password: '',
    database: 'classlist_db'
  },
  console.log(`Connected to the classlist_db database.`)
);

// Query database
db.query('SELECT * FROM students', function (err, results) {
  console.log(results);
});
// if the response is not found 404
app.use((req, res) => {
  res.status(404).end();
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
