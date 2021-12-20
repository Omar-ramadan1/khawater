import 'package:flutter/material.dart';

class Appbar_widget extends StatelessWidget with PreferredSizeWidget {
  final String name ;
  Appbar_widget(this.name);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          name,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        shape: const Border(bottom: BorderSide(color: Colors.red, width: 2)),
        backgroundColor: Colors.white,
      );
  }

  @override
    // TODO: implement preferredSize

  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
