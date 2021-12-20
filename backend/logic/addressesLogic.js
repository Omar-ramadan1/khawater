const ADDRESSES = require('../model/addressesModel');
const mongoose = require('mongoose');


module.exports = {
    insertAddresses: async (req, res) => {
        const addresses = await ADDRESSES({
            streetname: req.body.streetname,
            town: req.body.town,
            postcode: req.body.postcode,
            
        }).save();
        res.json({
            message: "insert successfulllllly",
            id: addresses.id,
            streetname: addresses.streetname,
            town: addresses.town,
            postcode:addresses.postcode
            


        });
    },
    getAddresses: async (req, res) => {
        const addresses = await ADDRESSES.find();
        res.json({
            result: addresses.map(res => {
                return {
                    id: res.id,
                    streetname: res.streetname,
                    town: res.town,
                    postcode:res.postcode
                }
            })
        });
    },
    deleteAddresse:async(req, res)=>{
        const id = req.params.id;
        const del = await ADDRESSES.findByIdAndRemove(id);
        res.json({"delete" : del});
    },
    updateaddress: async (req, res) => {
        console.log(req.body);
        const addresses = await ADDRESSES
        addresses.findOneAndUpdate({ _id: mongoose.Types.ObjectId(req.body.id) }, req.body).then((result, error) => {
            // res.end("the change was suc");
            addresses.findOne({ _id: mongoose.Types.ObjectId(req.body.id) }, (error, result) => {
                console.log(result);
                res.json({
                    id: result.id,
                    streetname: result.streetname,
                    town: result.town,
                    postcode: result.postcode,
                });
            });

        });
        // Character.findOneAndUpdate();
    }
}