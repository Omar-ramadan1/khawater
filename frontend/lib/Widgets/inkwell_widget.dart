import 'package:flutter/material.dart';

class Inkwekk extends StatelessWidget {
  final String name;
  final double sizeOfIcon, fontSize;
  final IconData icon;
  final GestureTapCallback navigator;

  const Inkwekk(
      this.name, this.fontSize, this.sizeOfIcon, this.icon, this.navigator);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: navigator,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(icon, size: sizeOfIcon, color: Colors.white),
          ),
          const SizedBox(
            height: 40,
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
