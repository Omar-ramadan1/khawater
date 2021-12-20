const express = require('express');
const router = express.Router();
const{getImageResponse} = require('../logic/getImageLogic');



router.get('/',getImageResponse);

module.exports = router;