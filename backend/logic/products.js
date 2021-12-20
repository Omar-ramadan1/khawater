
const PRODUCTS = require('../model/products')
module.exports ={
       getProducts:async (req,res,next)=>{
const products = await PRODUCTS.find() ;
res.json({
    result: products.map(res=>{
       return{
        id:res.id,
        price:res.price,
        pricemax:res.pricemax,
        name:res.name,
        desc:res.desc,
        quantity:res.quantity,
        large:res.large,
        xlarge:res.xlarge,
        category:res.category
        
       }
    })
})
    },
    insertProduct:async(req,res)=>{
        const product = await new PRODUCTS({
            name: req.body.name,
            price: req.body.price,
            pricemax:req.body.pricemax,
            desc: req.body.desc,
            quantity: req.body.quantity,
            large:req.body.large,
            xlarge:req.body.xlarge,
            category:req.body.category
        }).save()
        res.json({"message":"isnerted successfully",
        id: product.id,
        price:product.price,
        pricemax:product.pricemax,
        name:product.name,
        desc:product.desc,
        quantity:product.quantity,
        large:product.large,
        xlarge:product.xlarge,
        category:product.category
        })

    },
    deleteProducts:async(req, res)=>{
        const id = req.params.id;
        const del = await PRODUCTS.findByIdAndRemove(id);
        res.json({"delete" : del});
    }

}