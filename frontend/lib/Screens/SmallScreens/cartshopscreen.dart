import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/Screens/SmallScreens/buy_item_screen.dart';
import 'package:food_app/Widgets/OfferShwrmaWidget.dart';
import 'package:food_app/Widgets/appbarKhawater.dart';
import 'package:food_app/Widgets/button_widget.dart';
import 'package:food_app/Widgets/buttonwidgettotal%20price.dart';
import 'package:food_app/Widgets/cartisemptywidget.dart';
import 'package:food_app/Widgets/cartshopwidget.dart';
import 'package:food_app/Widgets/vdivider.dart';
import 'package:food_app/models/CartItem.dart';
import 'package:food_app/models/UserData.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cartshopscreen extends StatefulWidget {
  static const roteName = '/CartShop';

  @override
  _CartshopscreenState createState() => _CartshopscreenState();
}

class _CartshopscreenState extends State<Cartshopscreen> {
  List productList = [];
  Map productInfo = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(context.read<UserData>().userData);

    CartItem cartItem = Provider.of<CartItem>(context, listen: false);
    //       print(cartItem.cartList);
    setState(() {
      productList = cartItem.cartList;
    });
    print(productList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarKhawater('خواطر دمشقيه'),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              context.watch<CartItem>().cartList.length == 0
                  ? CartIsempty()
                  : CartshopWidget(),
              SizedBox(
                height: 35,
              ),
              Divider(
                color: Colors.black,
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  context.watch<CartItem>().cartList.length == 0
                      ? ListTile(
                          leading: Text(
                            "Total",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          trailing: Text("0.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                        )
                      : Column(
                          children: [
                            for (int i = 0; i < 1; i++)
                              ListTile(
                                trailing: Text(
                                  "\$ ${context.watch<CartItem>().total}"
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                leading: Text(
                                  "Total".tr,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                          ],
                        )
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Row(
              children: [
                for (int i = 0;
                    i <= context.read<CartItem>().cartList.length;
                    i++)
                  context.read<CartItem>().cartList.length == 0
                      ? Button_Widget_totaol(
                          "Go to Checkout",
                          MediaQuery.of(context).size.width,
                          75,
                          Colors.orangeAccent,
                          () {},
                        )
                      : Button_Widget_totaol(
                          "BUY NOW".tr,
                          MediaQuery.of(context).size.width,
                          75,
                          Colors.orange,
                          () {
                            if (context.read<UserData>().userData == null) {
                              final snackBar = SnackBar(
                                  content: Text(
                                "please save your data first",
                                style: TextStyle(fontSize: 18),
                              ));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            } else {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => Buy_item_Screen(),
                                ),
                              );
                            }
                          },
                        ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
