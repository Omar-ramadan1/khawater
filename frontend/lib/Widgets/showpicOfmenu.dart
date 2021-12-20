import 'package:flutter/material.dart';

class ShowPicOfMenu extends StatelessWidget {
  const ShowPicOfMenu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
            height: MediaQuery.of(context).size.height / 3,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/krs.jpg"),
            )),
          );
  }
}