const express = require('express');
const productRoute = require('./route/products');
const app = express();
const mongoose = require('mongoose');
var bodyParser = require('body-parser');
const cors = require('cors');
const ContactRouter = require('./route/contactsRouter');
const AddresseRouter = require('./route/addressesRouter');
const OfferRouter = require('./route/offerRouter');
const CartshopRouter = require('./route/cartshopRouter');

// const AuthRouter = require('./route/authRouter');
// const user_check = require('./middleware/verify_user');
// const admin_check = require('./middleware/verify_admin');



const getImageRouter = require('./route/getImageRouter');



const Port = 4000;
mongoose.connect('mongodb+srv://khwater:khwater@cluster0.bbitm.mongodb.net/khwaterDatabase?retryWrites=true&w=majority',

    {
        useNewUrlParser: true,
        useUnifiedTopology: true
    }
);
const connection = mongoose.connection;
connection.on('connected', () => { console.log("connect with cloud") });
connection.on('error', () => { console.log("error with database") });

app.use([bodyParser.urlencoded({ extended: true }), express.json(), express.urlencoded({ extended: true })]);
app.use(cors());


app.use('/products', productRoute);
app.use('/image', getImageRouter);
app.use('/address', AddresseRouter);
app.use('/offer', OfferRouter);

//app.use('/auth', AuthRouter);
// app.get('/contacts',user_check);
// app.post('/contacts',admin_check);
app.use('/contacts', ContactRouter);
app.use('/cartshop',CartshopRouter);


app.listen(process.env.PORT || 4000, () => {
    console.log("it is working");
})

module.exports = app;