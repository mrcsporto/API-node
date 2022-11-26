const express = require('express')
const database = require('./connection/databaseConnection')
const app = express()
const port = 8000

app.get('/tipos', async (req, res) => {
    const tipos = await database.execute('SELECT * FROM tb_tipos')
    res.send(tipos)
})

app.get('/bebidas', async (req, res) => {
    const bebidas = await database.execute('SELECT * FROM tb_bebidas AS B JOIN tb_tipos AS T ON B.tipos_id = T.id ')
    res.send(bebidas)
})


app.listen(port, () => {
    console.log('API running in http://localhosto:8000')
})

