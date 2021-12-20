const express = require('express');
const router = express.Router();
const{insertContacts,getContacts,deletecontact,updatecontact} = require('../logic/contactsLogic');



router.post('/',insertContacts);
router.get('/',getContacts);
router.delete('/:id',deletecontact);
router.put('/',updatecontact)


module.exports = router;
