const express = require('express');
const router = express.Router();
const{insertCartshop,getCartshop,deleteCartshop,updateCartshop} = require('../logic/cartshopLogic');



router.post('/',insertCartshop);
router.get('/',getCartshop);
router.delete('/:id',deleteCartshop);
router.put('/',updateCartshop);


module.exports = router;
