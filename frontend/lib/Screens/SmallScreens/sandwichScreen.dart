import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:food_app/Widgets/AppBar_ShowMenu.dart';
import 'package:food_app/Widgets/sandwichwidget.dart';


class SandwichScreen extends StatefulWidget {
  const SandwichScreen({Key? key}) : super(key: key);
  static const roteName = '/SandwichScreen';

  @override
  _SandwichScreenState createState() => _SandwichScreenState();
}

class _SandwichScreenState extends State<SandwichScreen> {
  Map ProductInfo = {};
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    String offerInfoString =
        jsonEncode(ModalRoute.of(context)!.settings.arguments);
    setState(() {
      ProductInfo = jsonDecode(offerInfoString);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_ShowMenu(
        imageName: ProductInfo["name"],
      ),
      body: Sandwichwidget()
    );
  }



}
