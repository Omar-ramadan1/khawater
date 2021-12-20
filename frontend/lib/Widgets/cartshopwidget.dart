import 'package:flutter/material.dart';
import 'package:food_app/models/CartItem.dart';
import 'package:provider/src/provider.dart';

class CartshopWidget extends StatefulWidget {
  const CartshopWidget({Key? key}) : super(key: key);

  @override
  _CartshopWidgetState createState() => _CartshopWidgetState();
}

class _CartshopWidgetState extends State<CartshopWidget> {
  int price = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < context.read<CartItem>().cartList.length; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                ' ${context.watch<CartItem>().cartList[i]["quantity"]}\*'
                    .toString(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                context.watch<CartItem>().cartList[i]["name"] ?? '..',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              //   Text("data"),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      context.watch<CartItem>().cartList[i]['xlarge'] == true
                          ? Text(
                              "\$ ${context.watch<CartItem>().cartList[i]['pricemax'] * context.watch<CartItem>().cartList[i]["quantity"]}"
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            )
                          : Text(
                              "\$ ${context.watch<CartItem>().cartList[i]['price'] * context.watch<CartItem>().cartList[i]["quantity"]}"
                                  .toString(),
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                      IconButton(
                          onPressed: () {
                            CartItem cartItem =
                                Provider.of<CartItem>(context, listen: false);
                            cartItem.removeCartItem(
                                context.read<CartItem>().cartList[i]);
                          },
                          icon: Icon(
                            Icons.close,
                            color: Colors.red,
                          )),
                    ],
                  ),
                ],
              )
            ],
          )
      ],
    );
  }
}
