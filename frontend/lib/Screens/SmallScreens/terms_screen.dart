import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appbar_widget.dart';
import 'package:food_app/Widgets/terms_body.dart';

class Terms_screen extends StatelessWidget {
  static const roteName = '/TermsScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_widget("Terms"),
      body: TermBody()
    );
  }
}
