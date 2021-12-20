// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/aboutwidget.dart';
import 'package:food_app/Widgets/appbar_widget.dart';

class AboutScreen extends StatelessWidget {
  static const routename = '/About';

  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_widget('About'),
      body: AboutWidget()
    );
  }
}
