const mongoose = require('mongoose');

const addresses = mongoose.Schema({
    streetname: String,
    town:String,
    postcode:String,
});

module.exports = mongoose.model("ADDRESSES",addresses);


