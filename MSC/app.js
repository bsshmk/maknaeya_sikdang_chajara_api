const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const models = require("./models/index.js");

models.sequelize.sync().then( () => {
  console.log(" DB 연결 성공");
}).catch(err => {
  console.log("연결 실패");
  console.log(err);
})

const port = 9999;

const restaurant = require('./routes/index');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use('/restaurant', restaurant);

app.listen(port, function(){
    console.log('server is running');
});