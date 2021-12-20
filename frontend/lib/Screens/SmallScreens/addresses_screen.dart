import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/addesswidget.dart';
import 'package:food_app/Widgets/appbar_widget.dart';
import 'package:food_app/Widgets/button_widget.dart';
import 'package:food_app/Widgets/textfieldaddresswidget.dart';
import 'package:food_app/contant/constant.dart';
import 'package:food_app/models/UserData.dart';
import 'package:provider/src/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class Addresses_screen extends StatelessWidget {
  static const roteName = '/AddressScreen';

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_widget('Address'),
      body: AddressWidget()
    );
  }
}
