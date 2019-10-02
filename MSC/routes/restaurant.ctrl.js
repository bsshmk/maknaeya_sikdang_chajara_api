var model = require('../models');

// root
let test = function(req, res){
    res.send('restaurant root');
};

let test2 = function(req, res){
    
    model.restaurant_table.findAll({
        
    }).then(function(results){
        res.json(results);
    });
};

// simple information of restaurants
let info = function(req, res){

    model.restaurant_table.findAll({
        attributes: ['restaurant_id', 'restaurant_name', 'rating', 'review_count_number', 'gps_N', 'gps_E']
    }).then(function(results){
        res.json(results);
    });
};

// query 고치기
let distByLoc = function(req,res){

    var latitude = req.query.gps_N.toString();
    var longitude = req.query.gps_E.toString();
    var range = req.query.range.toString();

    var qry = 'SELECT *, (6371*acos(cos(radians((:lat)))*cos(radians(gps_N))*cos(radians(gps_E)-radians((:lon)))+sin(radians((:lat2)))*sin(radians(gps_N)))) AS distance FROM restaurant_table HAVING distance <= (:ran)';

    model.restaurant_table.query(qry,{
        replacements: {
            lat: latitude,
            lon: longitude,
            lat2: latitude,
            ran: range
        }
    }).then(function(results){
        res.json(results);
    });

};

// // select restaurants by location and range
// let distByLoc = function(req, res){

//     var latitude = req.query.gps_N.toString();
//     var longitude = req.query.gps_E.toString();
//     var range = req.query.range.toString();

//     var params = [latitude, longitude, latitude, range];

//     // calculate distance
//     var qry = 'SELECT *, (6371*acos(cos(radians(?))*cos(radians(gps_N))*cos(radians(gps_E)-radians(?))+sin(radians(?))*sin(radians(gps_N)))) AS distance FROM restaurant_table HAVING distance <= ?';
     
//     connection.query(qry, params, function(err, rows){
//         if(err) {
//             console.log(err);
//             throw err;
//         }
//         console.log('selecting everything');
//         res.send(rows);
//     });
// };

let reviewById = function(req, res){

    var id = req.query.id.toString();

    model.restaurant_review.findAll({
        where: {
            restaurant_id: id
        }
    }).then(function(results){
        res.send(results);
    });
};

module.exports = {
    test: test,
    info: info,
    distByLoc: distByLoc,
    reviewById: reviewById,
    test2: test2
};