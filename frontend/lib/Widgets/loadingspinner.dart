import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SpinnerLoading extends StatelessWidget {
  const SpinnerLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitRotatingCircle(
        color: Colors.orange,
        size: 150.0,
      ),
    );
  }
}
