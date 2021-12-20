import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiliveryWidget extends StatelessWidget {
  const DiliveryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delivery_dining_sharp,
                size: 25,
              ),
            ),
            Text(
              "Delivery Fees".tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 4,
          endIndent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "     Fee-EGP 20.00",
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.watch_later_outlined,
                size: 26,
              ),
            ),
            Text(
              "Opening Hours".tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 4,
          endIndent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Monday-Sunday",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "10.00 AM -02.00AM",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.badge,
                size: 26,
              ),
            ),
            Text(
              "Pickup".tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 4,
          endIndent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Monday-Sunday",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "10.00 AM -02.00AM",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.payments,
                size: 26,
              ),
            ),
            Text(
              "Payment Method".tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 4,
          endIndent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              " Cash  ",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "(Pickup,Delivery)",
              style: TextStyle(fontSize: 17),
            )
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_rounded,
                size: 26,
              ),
            ),
            Text(
              "Address".tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 4,
          endIndent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "شارع مسجد حاتم -سموحه- الاسكندريه",
              style: TextStyle(fontSize: 19),
            ),
            // Text("10.00 AM -02.00AM",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.phone,
                size: 26,
              ),
            ),
            Text(
              "Phone".tr,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          indent: 4,
          endIndent: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Text(
                  "+201286996779",
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  "+201286996779",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
