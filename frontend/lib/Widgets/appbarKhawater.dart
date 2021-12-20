import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appbar_widget.dart';

class AppbarKhawater extends StatelessWidget with PreferredSizeWidget {
final String name;
AppbarKhawater(this.name);
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          name,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 19),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white54,
        shadowColor: Colors.white54,
      );
  }
    @override
    // TODO: implement preferredSize

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}