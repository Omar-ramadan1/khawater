import 'package:flutter/material.dart';

class Button_Widget extends StatelessWidget {
  final String text;
  final double widthOfButton;
  final double hightofButton;
  final Color colorr;
  final GestureTapCallback function;

  Button_Widget(this.text, this.widthOfButton, this.hightofButton, this.colorr,
      this.function);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: hightofButton,
          width: widthOfButton,
          child: FlatButton(
            onPressed: function,
            child: Text(
              text,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: colorr,
          ),
        )
      ],
    );
  }
}
