const Auth = require('../model/authModel');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken');

module.exports={
    signup: async( req ,res)=>{
        const user =Auth.find({email: req.body.email})
        if(user.length>=1){
            return res.json({message:"this email already  exist"});
        }else{
            bcrypt.hash(req.body.password,10,async( error,hash  )=>{
                if(error){
                    return res.json({message:" error in password"});
                }else{
                    const auth = await new Auth({
                        name: req.body.name,
                        email: req.body.email,
                        password: hash,
                        type: req.body.type 
                    }).save();
                    res.json({
                        message:"create user successfully",
                        name:auth.name,
                        email: auth.email,
                        password: auth.hash,
                        type: auth.type
                    })
                }
            })
        }
    },
    login: async(req, res)=>{
         const user = await Auth.find({email: req.body.email});
         if(user.length<1){
             return res.json({message:"this email not exist"});

         }else{
             bcrypt.compare(req.body.password,user[0].password,async(erorr, result)=>{
                 if(erorr){
                        return res.json({message:"password not exist"});
                 }
                 if(result){
                            if(user[0].type ==0){
                                const token = jwt.sign({email:user[0].email,name: user[0].name,},"USER");
                                return res.json({
                                    message:"user logged in",
                                    type: user[0].type,
                                    email: user[0].email,
                                    token: token,
                                })
                            }else{
                                const token = jwt.sign({email:user[0].email,name: user[0].name,},"ADMIN");
                                return res.json({
                                    message:"admin logged in",
                                    type: user[0].type,
                                    email: user[0].email,
                                    token: token,
                                })

                            }
                 }
             })
         }
    }
}