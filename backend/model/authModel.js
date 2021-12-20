const mongoose = require('mongoose');

const auth = mongoose.Schema({
    name: String,
    email:String,
    password: String,
    type: Number
});

module.exports = mongoose.model("AUTH",auth);