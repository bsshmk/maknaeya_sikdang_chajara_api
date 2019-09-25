const express = require('express');
const router = express.Router();

const controller = require('./restaurant.ctrl');

router.get('/', controller.test);
router.get('/name', controller.resNames);
router.get('/info', controller.info);
router.get('/detailInfo/:id', controller.detailInfo);
router.get('/review/:id', controller.reviews);

module.exports = router;