const OFFERS = require('../model/offerModel');


module.exports = {
    insertOffers: async (req, res) => {
        const offers = await OFFERS({
            imagename: req.body.imagename,
            description: req.body.description,
      
        }).save();
        res.json({
            message: "insert successfully",
            id: offers.id,
            imagename: offers.imagename,
            description: offers.description,
        });
    },
    getOffers: async (req, res) => {
        const offers = await OFFERS.find();
        res.json({
            result: offers.map(res => {
                return {
                    id: res.id,
                    imagename: res.imagename,
                    description: res.description,
                    
                }
            })
        });
    },
    deleteoffer:async(req, res)=>{
        const id = req.params.id;
        const del = await OFFERS.findByIdAndRemove(id);
        res.json({"delete" : del});
    }
}