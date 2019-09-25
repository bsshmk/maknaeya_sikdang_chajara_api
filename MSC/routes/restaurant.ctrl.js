var mysql = require('mysql');
var dbconfig = require('../config/db_info');
var connection = mysql.createConnection(dbconfig);

// root
let test = function(req, res){
    res.send('restaurant root');
};

// whole restaurants
let resNames = function(req, res){
    connection.query('SELECT * FROM restaurant_table', function(err, rows){
        if(err) {
            console.log(err);
            throw err;
        }
        res.send(rows);
    });
};

// simple info of restaurants
// append coordinate
let info = function(req, res){

    var qry = 'SELECT restaurant_id, restaurant_name, rating, review_count_number FROM restaurant_table';

    connection.query(qry, function(err,rows){
        if(err){
            console.log(err);
            throw err;
        }
        res.send(rows);
    });
};

// detailInfo by restaurant_id
let detailInfo = function(req, res){

    var id = req.params.id.toString();

    var qry = 'SELECT * FROM restaurant_table WHERE restaurant_id = ?';

    connection.query(qry, id, function(err,rows){
        if(err){
            console.log(err);
            throw err;
        }
        res.send(rows);
    });
};

// let reviews = function(req, res){

//     connection.query(qry, function(err, rows){

//     });


// };

module.exports = {
    test: test,
    resNames: resNames,
    info: info,
    detailInfo: detailInfo,
    reviews: reviews
};