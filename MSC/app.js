const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const port = 9999;

const restaurant = require('./routes/index');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use('/restaurant', restaurant);

app.listen(port, function(){
    console.log('server is running');
});