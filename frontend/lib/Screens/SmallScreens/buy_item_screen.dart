import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appbarKhawater.dart';
import 'package:food_app/Widgets/button_widget.dart';
import 'package:food_app/Widgets/buyitem_widget.dart';
import 'package:food_app/models/UserData.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:provider/src/provider.dart';

class Buy_item_Screen extends StatefulWidget {
  static const roteName = '/Buy_item_Screen';

  @override
  State<Buy_item_Screen> createState() => _Buy_item_ScreenState();
}

class _Buy_item_ScreenState extends State<Buy_item_Screen> {
  late Map? userDataa;
  @override
  void initState() {

        context.read<UserData>().getUserData();

    print(context.read<UserData>().userData);
    userDataa = context.read<UserData>().userData;
    //userDataa['']
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar:AppbarKhawater('CHECKOUT'),
          body: buyitemWidget(),
        ),
                Positioned(
                bottom: 0,
                child: Button_Widget('Place Delivery Order Now',MediaQuery.of(context).size.width,
                75,Colors.orange,(){
                         showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 4,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "We Wil call you at :",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Spacer(),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${context.read<UserData>().userData?['phone']} ",
                                  
                                    style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                           Row(
                             children: [
                               Text("to ensure your order"),
                             ],
                           )
                      
                       
                            ],
                          ),
                        ),
                       
                      );
                    });
       


                }
                ))
    
      ],
    );
  }
}
