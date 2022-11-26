const mysql2 = require('mysql2/promise')

async function execute(sql) {
    const DB_USER = 'root'
    const DB_PASSWORD = '1234'
    const DB_NAME = 'db_estoque'

    const connection = await mysql2.createConnection({
        host: 'localhost',
        user: DB_USER,
        password: DB_PASSWORD,
        database: DB_NAME,
    })

const [results,] = await connection.query(sql)

await connection.end();
return results
}

module.exports = {execute}