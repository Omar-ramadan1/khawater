const mongoose = require('mongoose');

const offers = mongoose.Schema({
    imagename: String,
    description:String,
    
});

module.exports = mongoose.model("OFFERS",offers);


