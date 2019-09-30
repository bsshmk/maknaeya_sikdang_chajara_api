const express = require('express');
const router = express.Router();

const controller = require('./restaurant.ctrl');

router.get('/', controller.test);
router.get('/info', controller.info);
router.get('/distByLoc', controller.distByLoc);
router.get('/reviewById', controller.reviewById);

module.exports = router;