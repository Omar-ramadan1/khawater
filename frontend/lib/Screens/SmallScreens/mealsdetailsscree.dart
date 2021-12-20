import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/Screens/SmallScreens/buy_item_screen.dart';
import 'package:food_app/Widgets/AppBar_ShowMenu.dart';
import 'package:food_app/Widgets/button_widget.dart';
import 'package:food_app/contant/constant.dart';
import 'package:food_app/models/CartItem.dart';
import 'package:food_app/models/UserData.dart';
import 'package:provider/src/provider.dart';

class MealScreen extends StatefulWidget {
  const MealScreen({Key? key}) : super(key: key);
  static const roteName = '/MealScreen';

  @override
  _MealScreenState createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  Map offerInfo = {};
    List productList = [];

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
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    String offerInfoString =
        jsonEncode(ModalRoute.of(context)!.settings.arguments);
    setState(() {
      offerInfo = jsonDecode(offerInfoString);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_ShowMenu(
        imageName: offerInfo["description"],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.fill,
                  image: Image.network(
                          "${serverURL}image?name=${offerInfo["imagename"]}")
                      .image,
                )),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "العروض اليوميه",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "اقوي العروض و الخصومات لايام محدوده",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "${serverURL}image?name=whiteFriday.jpg"),
                    )),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            bottom: 0,
            child: Button_Widget("Order now", MediaQuery.of(context).size.width,
                75, Colors.orange, () {
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
          ),
        ],
      ),
    );
  }
}
