const mongoose = require('mongoose');
const CARTSHOP = require('../model/cartshopModel')
module.exports ={
       getCartshop:async (req,res,next)=>{
const cartshop = await CARTSHOP.find() ;
res.json({
    result: cartshop.map(res=>{
       return[{
        id:res.id,
        price:res.price,
        name:res.name,
        desc:res.desc,
        quantity:res.quantity,
        large:res.large,
        xlarge:res.xlarge
       }]
    })
})
    },
    insertCartshop:async(req,res)=>{
        const cartshop = await new CARTSHOP({
            name: req.body.name,
            price: req.body.price,
            pricemax:req.body.price,
            desc: req.body.desc,
            quantity:req.body.quantity,
           large:req.body.large,
           xlarge:req.body.large
        }).save()
        res.json({"message":"isnerted successfulllllyy",
        name: cartshop.name,
        id:cartshop.id,
        price:cartshop.price,
        desc:cartshop.desc,
        quantity:cartshop.quantity,
     //   large:cartshop.large,
       // xlarge:cartshop.xlarge

        });

    },
    deleteCartshop:async(req, res)=>{
        const id = req.params.id;
        const del = await CARTSHOP.findByIdAndRemove(id);
        res.json({"delete" : del});
    },
    updateCartshop: async (req, res) => {
        console.log(req.body);
        const cartshop = await CARTSHOP
        cartshop.findOneAndUpdate({ _id: mongoose.Types.ObjectId(req.body.id) }, req.body).then((result, error) => {
            cartshop.findOne({ _id: mongoose.Types.ObjectId(req.body.id) }, (error, result) => {
                console.log(result);
                res.json([{
                    id: result.id,
                    name: result.name,
                    price: result.price,
                    desc: result.desc,
                    quantity: result.quantity,
                    large: result.large,
                    xlarge:result.xlarge
                }]);
            });

        });
        // Character.findOneAndUpdate();
    }

}