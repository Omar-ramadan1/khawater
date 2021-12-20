const mongoose = require('mongoose');
const cartshop = mongoose.Schema([{
    name:String,
    price:Number,
    desc:String,
    quantity:Number,
    large:Boolean,
    xlarge:Boolean
}])

module.exports = mongoose.model('CARTSHOP',cartshop);