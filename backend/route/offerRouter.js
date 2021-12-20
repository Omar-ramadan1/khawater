const express = require('express');
const router = express.Router();
const{insertOffers,getOffers,deleteoffer} = require('../logic/offerLogic');



router.post('/',insertOffers);
router.get('/',getOffers);
router.delete('/:id',deleteoffer);


module.exports = router;
