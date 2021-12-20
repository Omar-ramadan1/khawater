import 'package:flutter/material.dart';
import 'package:food_app/Screens/SmallScreens/sandwichScreen.dart';

class Listtile_widet extends StatefulWidget {
  final String nameOfFood;
  final String price;
  final GestureTapCallback gestureDetector;
Listtile_widet(this.nameOfFood, this.price, this.gestureDetector);

  @override
  State<Listtile_widet> createState() => _Listtile_widetState();
}

class _Listtile_widetState extends State<Listtile_widet> {
  bool value = false;

  Widget buildChckbox() => Checkbox(
      value: value,
      onChanged: (value) {
        setState(() {
          this.value = value!;
        });
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.gestureDetector,
      child: Row(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(color: Colors.white),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 15, bottom: 10),
                      child: Text(widget.nameOfFood,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 13),
                      child: Text(
                        widget.price,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
   );

  }
}
