import 'package:flutter/material.dart';

class Dividerr extends StatefulWidget {
  const Dividerr({Key? key}) : super(key: key);

  @override
  _DividerrState createState() => _DividerrState();
}

class _DividerrState extends State<Dividerr> {
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return const Divider(
      color: Colors.white54,
      height: 5,
      thickness: .5,
      indent: 5,
    );
  }
}
