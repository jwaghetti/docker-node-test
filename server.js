
const express = require('express');

const PORT = 8080;

const app = express();

app.get('/', function (req, res) {
  res.send('Hello world\n');
});

app.get('/hellow', function (req, res) {
  res.send('Hellow world\n');
});

app.listen(PORT);

