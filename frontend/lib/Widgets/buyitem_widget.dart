import 'package:flutter/material.dart';
import 'package:food_app/models/UserData.dart';
import 'package:provider/src/provider.dart';

class buyitemWidget extends StatefulWidget {
  const buyitemWidget({Key? key}) : super(key: key);

  @override
  _buyitemWidgetState createState() => _buyitemWidgetState();
}

class _buyitemWidgetState extends State<buyitemWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.grey),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
        ),
        child: Text(
          "عند الطلب يرجي كتابه بريدك الالكتروني الشخصي او هذا بدلا منه  \n o@kdem.me \nفي الخانه المخصصه لذلك \nارقامنا 16435 او 01208833388",
          style: TextStyle(
              color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        //  decoration: BoxDecoration(color: Colors.white),
        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  //  decoration: BoxDecoration(color: Colors.red),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                      Text(
                        "CONTACT",
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Name: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      context.read<UserData>().userData?['firstname'],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(" "),
                    Text(
                      context.read<UserData>().userData?['lastname'],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Email: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      context.read<UserData>().userData?['email'],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Your Phone: ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      context.read<UserData>().userData?['phone'],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Divider(
        color: Colors.grey,
        thickness: 2,
      ),
      Container(
        width: MediaQuery.of(context).size.height / 6,
        height: MediaQuery.of(context).size.height / 6,
        // decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.watch_later_outlined)),
                Text(
                  "AVAILABLE TIME CHOICE",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("as soon as possible",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
      Divider(
        color: Colors.grey,
        thickness: 2,
      ),
      Container(
        width: MediaQuery.of(context).size.height / 6,
        height: MediaQuery.of(context).size.height / 6,
        // decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.watch_later_outlined)),
                Text(
                  "PAYMENT METHOD",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("CASH",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
      Divider(
        color: Colors.grey,
        thickness: 2,
      ),
      Container(
        width: MediaQuery.of(context).size.height / 6,
        height: MediaQuery.of(context).size.height / 3,
        // decoration: BoxDecoration(color: Colors.red),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // IconButton(
                //     onPressed: () {}, icon: Icon(Icons.money_off_csred_sharp)),
                Text(
                  "please make sure of that yout information in right",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Text("CASH",style: TextStyle(fontSize: 18,fontWeight:FontWeight.bold)),
              ],
            )
          ],
        ),
      )
    ]);
  }
}
