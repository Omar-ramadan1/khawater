import 'package:flutter/material.dart';

class Button_Widget_totaol extends StatelessWidget {
  final String text;
  final double widthOfButton;
  final double hightofButton;
  final Color colorr;
  final GestureTapCallback function;

  Button_Widget_totaol(
    this.text,
    this.widthOfButton,
    this.hightofButton,
    this.colorr,
    this.function,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          height: hightofButton,
          width: widthOfButton,
          child: InkWell(
            onTap: function,
            child: Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          decoration: BoxDecoration(color: colorr),
        ),
      ],
    );
  }
}
