import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/models/CartItem.dart';
import 'package:food_app/models/Cartshop.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:provider/src/provider.dart';

import 'button_widget.dart';

class Sandwichwidget extends StatefulWidget {
  const Sandwichwidget({Key? key}) : super(key: key);

  @override
  State<Sandwichwidget> createState() => _SandwichwidgetState();
}

class _SandwichwidgetState extends State<Sandwichwidget> {
  Map ProductInfo = {};
  bool isXlarge = false;
  int quantity = 0;
  int price = 0;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    String offerInfoString =
        jsonEncode(ModalRoute.of(context)!.settings.arguments);
    setState(() {
      ProductInfo = jsonDecode(offerInfoString);
      quantity = ProductInfo["quantity"];
      price = ProductInfo["price"];
      if (ProductInfo['large'] == ProductInfo['xlarge']) {
        ProductInfo['large'] != ProductInfo['xlarge'];
      }
      print("ProductInfo");
      print(ProductInfo);
    });
  }

  @override
  void initState() {
    super.initState();
    print("object");
          print(ProductInfo);

  }

  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: Text(
                    "Size".tr,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: isXlarge
                        ? Colors.blue.shade50
                        : Colors.white,
                    border: Border.all(color: Colors.black),
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      " +${ProductInfo['pricemax'] - ProductInfo['price']} اكس لارج",
                
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    dense: true,
                    value: isXlarge,
                    onChanged: (value) {
                      setState(
                        () {
                          if (value == true) {
                            isXlarge = value!;
                          }
                        },
                      );
                    },
                    activeColor: Colors.blueGrey,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: isXlarge
                        ? Colors.white
                        : Colors.blue.shade50,
                    border: Border.all(color: Colors.black),
                  ),
                  child: CheckboxListTile(
                    title: Text(
                      " لارج",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    dense: true,
                    value:isXlarge ? false : true,
                    onChanged: (value) {
                      setState(() {
                        if (value == true) {
                          isXlarge = false;
                          ProductInfo['xlarge'] = false;
                        }
                      });
                    },
                    activeColor: Colors.blueGrey,
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: Text(
                    "Special Instructions".tr,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                      controller: descriptionController,
                      minLines: 2,
                      maxLines: 3,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintText: "Example: No pepper/ sugar /salt Please",
                          helperStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))))),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 17),
                  child: Text(
                    "Quantity".tr,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 11,
                  width: MediaQuery.of(context).size.width / 1.92,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Text(
                    quantity.toString(),
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: subtract,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(color: Colors.black),
                    ),
                    child: GestureDetector(
                        onTap: subtract,
                        child: SizedBox(
                          child: Icon(
                            Icons.remove,
                            size: 30,
                            color: Colors.white,
                          ),
                          height: 28,
                        )),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 11,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black),
                  ),
                  child: GestureDetector(
                      onTap: add,
                      child: SizedBox(
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                        height: 28,
                      )),
                ),
              ],
            )
          ],
        ),
        Positioned(
          bottom: 0,
          child: Button_Widget(
              "Add to cart".tr,
              MediaQuery.of(context).size.width
              //100
              ,
              75,
              Colors.orange, () {
            final snackBar = SnackBar(
              content: Text("you added : ${ProductInfo["name"]}  *${quantity}"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            context.read<CartItem>().addCartItem(ProductInfo, quantity , isXlarge);
          }),
        ),
      ],
    );
  }

  subtract() {
    setState(() {
      if (ProductInfo['quantity'] > 0) {
        quantity--;
      }
    });
  }

  add() {
    setState(() {
      quantity++;
    });
  }
}
