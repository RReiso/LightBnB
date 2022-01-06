const { Pool } = require("pg");

const pool = new Pool({
  user: "vagrant",
  password: "123",
  host: "localhost",
  database: "vagrant",
});

pool
  .connect()
  .then(() => {
    console.log("DATABASE STATUS: Connected :)");
  })
  .catch((e) => {
    console.log(e);
  });

module.exports = pool;
