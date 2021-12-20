import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appbar_widget.dart';
import 'package:food_app/Widgets/privacy_body.dart';

class Privacy_screen extends StatelessWidget {
  const Privacy_screen({Key? key}) : super(key: key);
  static const roteName = '/Privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: Appbar_widget("Privacy"), body: Privacy_body());
  }
}
