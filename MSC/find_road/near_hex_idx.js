var hex_function = require("./hex_function")

function searchHex(latitude, longitude, hexMap) {
    return new Promise((res, rej) => {

        var rate = 110.574 / (111.320 * Math.cos(37.550396 * Math.PI / 180));
        var layout_pointy = hex_function.Orientation(Math.sqrt(3.0), Math.sqrt(3.0) / 2.0, 0.0, 3.0 / 2.0, Math.sqrt(3.0) / 3.0, -1.0 / 3.0, 0.0, 2.0 / 3.0, 0.5);
        var center = hex_function.Point(126.978955, 37.550396);
        var layout = hex_function.Layout(layout_pointy, hex_function.Point(rate * 0.0001, 0.0001), center);
        
        var fractionalHex = hex_function.pixel_to_hex(layout, hex_function.Point(longitude, latitude));

        var roundHex = hex_function.hex_linedraw(hex_function.hex_round(fractionalHex), hex_function.hex_round(fractionalHex));
        var hexData = roundHex[0];
        
        //console.log("hex q = " + hexData.q + "\nhex r = " + hexData.r + "\nhex s = " + hexData.s);

        if (hexMap.get(JSON.stringify(hexData)) != null) {
            // return hexData;
            //console.log("Asdf");
            res(hexData);
        }

        var hexDirections = hex_function.hex_directions;
        var currentHex = hexData;
        var resultHex = hex_function.Hex(0, 0, 0);
        var distance = 987654321;

        for (hexDirection of hexDirections) {
            var hexDepth = 0;
            var nextHex = currentHex;
            while (true) {
                if (hexDepth == 20) {
                    break;
                }
                nextHex = hex_function.hex_add(nextHex, hexDirection);
                if (hexMap.get(JSON.stringify(nextHex)) != null && distance > hex_function.hex_distance(nextHex, currentHex)) {
                    distance = hex_function.hex_distance(nextHex, currentHex);
                    resultHex = nextHex;
                    break;
                }
                hexDepth++;
            }

        }
        // return resultHex;
        res(resultHex);
    });
}

module.exports = {
    searchHex
}