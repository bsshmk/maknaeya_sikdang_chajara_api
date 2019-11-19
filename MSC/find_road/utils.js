function deg2rad(deg){
    return deg*Math.PI/180.0;
}

function rad2deg(rad){
    return rad*180.0/Math.PI;
}

exports.getDistance = function getDistance(lat1, lng1, lat2, lng2){
    const theta = lng1-lng2;
    var dist = Math.sin(deg2rad(lat1)) * Math.sin(deg2rad(lat2))
                    + Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * Math.cos(deg2rad(theta));

    dist = Math.acos(dist);
    dist = rad2deg(dist);
    dist = dist * 60 * 1.1515 * 1.609344 / 1000;

    // meter 단위
    return dist;
};