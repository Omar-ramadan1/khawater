import 'package:flutter/material.dart';

class Divider_widget extends StatelessWidget {
  const Divider_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: Colors.grey,
      width: 50,
      indent: 0,
      thickness: 2,
      endIndent: 2,
    );
  }
}
