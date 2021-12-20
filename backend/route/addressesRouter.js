const express = require('express');
const router = express.Router();
const {insertAddresses,getAddresses,deleteAddresse,updateaddress} = require('../logic/addressesLogic');



router.post('/',insertAddresses);
router.get('/',getAddresses);
router.delete('/:id',deleteAddresse);
router.put('/',updateaddress);


module.exports = router;
