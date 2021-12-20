const mongoose = require('mongoose');

const contacts = mongoose.Schema({
    firstname: String,
    lastname:String,
    email:String,
    phone:String,
});

module.exports = mongoose.model("CONTACTS",contacts);


