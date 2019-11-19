var fs = require('fs');
var utils = require('./utils');
var PriorityQueue = require('./priority_queue');
var preProc = require('./near_hex_idx');

var coord2ID = new Map();
var qrs2ID = new Map();

var id2Coord = new Map();
var id2Qrs = new Map();

var nodeSet = new Set();
var closedList = new Set();

// var hexSet = new WeakSet();
var hexMap = new Map();

var preNode = new Map();

const dq = [0, 1, 1, 0, -1, -1];
const dr = [-1, -1, 0, 1, 1, 0];
const ds = [1, 0, -1, -1, 0, 1];

const n2n = 18.57;

function xy(x, y) {
    return { "x": x, "y": y };
}

function qrs(q, r, s) {
    return { "q": q, "r": r, "s": s };
}

class NodeInfo {

    constructor(f, g, h, q, r, s, id, pre_id) {
        this.first = f; // f = g + h
        this.g = g; // g = 실제 거리
        this.h = h; // h = 휴리스틱 추정치

        this.q = q;
        this.r = r;
        this.s = s;

        this.id = id;
        this.pre_id = pre_id;
    }
}

async function reading() {
    return new Promise((res, rej) => {
        fs.readFile('testHexData.txt', 'utf8', function (err, data) {

            coord2ID.clear();

            if (err) rej(err);

            var lines = data.toString().split('\n');
            var tmp_id = 1;

            for (i in lines) {
                var line = lines[i].split(' ');

                var x = parseFloat(line[0]);
                var y = parseFloat(line[1]);
                var q = parseInt(line[2]);
                var r = parseInt(line[3]);
                var s = parseInt(line[4]);

                // nodeMap.set(tmp_id, tmp_node);
                coord2ID.set(line[0] + line[1], tmp_id);

                var tmp_qrs = qrs(q, r, s);
                var tmp_xy = xy(x, y);

                nodeSet.add(tmp_id);

                id2Coord.set(tmp_id, tmp_xy);
                id2Qrs.set(tmp_id, tmp_qrs);

                coord2ID.set(JSON.stringify(tmp_xy), tmp_id);
                qrs2ID.set(JSON.stringify(tmp_qrs), tmp_id);

                // hexSet.add(tmp_xy);
                // hexSet.add(tmp_qrs);
                hexMap.set(JSON.stringify(tmp_qrs), tmp_qrs);

                tmp_id++;
            }
            console.log("reading file");
            res();
        });
    });
}

const find_road = async function navigate(fromLat, fromLng, toLat, toLng) {

    // return new Promise((res, rej) => {

        await reading();

        var start_hex = await preProc.searchHex(fromLat, fromLng, hexMap);
        var dest_hex = await preProc.searchHex(toLat, toLng, hexMap);

        console.log(start_hex);
        console.log(dest_hex);

        const start_id = qrs2ID.get(JSON.stringify(start_hex));
        const dest_id = qrs2ID.get(JSON.stringify(dest_hex));

        var pq = new PriorityQueue();
        // var from_id = coord2ID.get(JSON.stringify(xy(fromLat,fromLng)));
        var from_id = start_id;

        console.log("from id = " + from_id);

        // var from_qrs = id2Qrs.get(from_id);
        var from_qrs = start_hex;

        var startNode = new NodeInfo(0, 0, 0, from_qrs.q, from_qrs.r, from_qrs.s, from_id, -1);
        pq.Insert(startNode);

        // const to_id = coord2ID.get(JSON.stringify(xy(toLat, toLng)));
        const to_id = dest_id;

        console.log("dest id = " + to_id);

        var num = 0;

        console.log(pq.Top());

        while (pq.heapSize > 0) {

            var here = pq.Top();

            var hf = here.first;
            var hg = here.g;
            var hh = here.h;

            var hq = here.q, hr = here.r, hs = here.s;
            var h_id = here.id;

            console.log("pq id = " + h_id);

            pq.Pop();

            if (closedList.has(h_id) == true) continue;

            closedList.add(h_id);
            preNode.set(h_id, here.pre_id);

            if (h_id == to_id) break;

            for (var i = 0; i < 6; i++) {

                var nq = hq + dq[i];
                var nr = hr + dr[i];
                var ns = hs + ds[i];

                var tmp = qrs(nq, nr, ns);

                var next_id = qrs2ID.get(JSON.stringify(tmp));

                // 없는 node거나 closed list에 있으면 contiue
                if (nodeSet.has(next_id) == false || closedList.has(next_id) == true) {
                    continue;
                }

                var ng = hg + n2n;
                var here_xy = id2Coord.get(h_id);

                var next_xy = id2Coord.get(next_id);

                var nh = utils.getDistance(here_xy.x, here_xy.y, next_xy.x, next_xy.y);
                var nf = ng + nh;

                // if(nf < hh){

                var next_info = new NodeInfo(nf, ng, nh, nq, nr, ns, next_id, h_id);

                pq.Insert(next_info);
                // }
            }
        }

        var ret = [];
        // ret.push(id2Coord.get(dest_id));
        // console.log(ret[0]);
        ret.push({ "x": toLat, "y": toLng });
        console.log(ret[0]);

        var now = to_id;

        var cnt = 1;

        console.log("track the route");
        while (true) {

            cnt++;
            // ret.push({"x": id2Coord.get(now).x, "y":id2Coord.get(now).y});
            ret.push(id2Coord.get(now));
            console.log(ret[cnt - 1]);
            // console.log("now " + ret[cnt-1].x + " " + ret[cnt-1].y);

            now = preNode.get(now);
            if (now == -1) break;
        }

        ret.push({ "x": fromLat, "y": fromLng });
        // console.log("asdf");
        console.log(ret[cnt]);

        // console.log(">>>>>>>>>");

        console.log(JSON.stringify(ret));

        // return ret;
        return JSON.stringify(ret);
        // res(JSON.stringify(ret));
    // });
}

module.exports = {
    find_road
}