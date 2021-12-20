import 'dart:core';

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appbar_widget.dart';
import 'package:food_app/Widgets/profile_widget.dart';

class ProfileScreen extends StatelessWidget {
  static const roteName = '/ProfileScreene';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbar_widget('my contact info'),
        body: ProfileWidget());
  }
}
