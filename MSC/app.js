const express = require('express');
const app = express();
const bodyParser = require('body-parser');

const models = require("./models/index.js");

models.sequelize.sync().then( () => {
  //console.log(" DB 연결 성공");
}).catch(err => {
  //console.log("연결 실패");
  //console.log(err);
});

// 1. 데이터베이스 받아와서 해시맵에 등록하기
// 2. A* 알고리즘 구현하기(안될 경우 BFS로 구현)
// 3. 시작 지점과 도착 지점이 도로 정보와 떨어져 있을 경우
//   도로까지 최단 경로를 BFS로 구현하기
// +. 시작 지점과 도착 지점의 변환 좌표를 받기 위해
//   Hex grid를 만드는 기준점 정보와 경도 위도를 Hex grid로 변환할 수 있어야 함

// 경로 리스트 넘길 때, 시작점과 도착 지점 포함해서 넘기기
// 지점의 수가 2보다 작을 경우, 경로 그리지 못한다.
// ex) start - (node) - (node) - (node) - destination

const port = 9999;

const restaurant = require('./routes/index');

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));

app.use('/restaurant', restaurant);

app.listen(port, function(){
    //console.log('server is running');
});