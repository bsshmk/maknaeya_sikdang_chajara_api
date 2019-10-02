var mysql = require('mysql');
var dbconfig = require('../config/db_info');
var connection = mysql.createConnection(dbconfig);

// root
let test = function(req, res){
    res.send('restaurant root');
};

// simple info of restaurants
// append coordinate
let info = function(req, res){

    var qry = 'SELECT restaurant_id, restaurant_name, rating, review_count_number, gps_N, gps_E, mean_price FROM restaurant_table';

    connection.query(qry, function(err,rows){
        if(err){
            console.log(err);
            throw err;
        }
        console.log('selecting small info');
        res.send(rows);
    });
};

// select restaurants by location and range
let distByLoc = function(req, res){

    var latitude = req.query.gps_N.toString();
    var longitude = req.query.gps_E.toString();
    var range = req.query.range.toString();

    var params = [latitude, longitude, latitude, range];

    // calculate distance
    var qry = 'SELECT *, (6371*acos(cos(radians(?))*cos(radians(gps_N))*cos(radians(gps_E)-radians(?))+sin(radians(?))*sin(radians(gps_N)))) AS distance FROM restaurant_table HAVING distance <= ?';
     
    connection.query(qry, params, function(err, rows){
        if(err) {
            console.log(err);
            throw err;
        }
        console.log('selecting everything');
        res.send(rows);
    });
};

// return reviews by restaurant id
let reviewById = function(req,res){

    var id = req.query.id.toString();

    var qry = 'SELECT * FROM review_table WHERE restaurant_id = ?';

    connection.query(qry, id, function(err, rows){
        if(err) {
            console.log(err);
            throw err;
        }
        console.log('selecting review by id');
        res.send(rows);
    });
};

module.exports = {
    test: test,
    info: info,
    distByLoc: distByLoc,
    reviewById: reviewById
};