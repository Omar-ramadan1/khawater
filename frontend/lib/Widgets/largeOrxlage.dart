// import 'package:flutter/material.dart';

// import 'listtile_widget.dart';

// class LargeOrxlarge extends StatefulWidget {
//   final String cardValue;
//   final Function channgeCardValueFUncation;

//   LargeOrxlarge(this.cardValue, this.channgeCardValueFUncation);

//   @override
//   State<LargeOrxlarge> createState() => _LargeOrxlargeState();
// }

// class _LargeOrxlargeState extends State<LargeOrxlarge> {
//   late bool value;

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     bool value = false;
//     Widget buildChckbox() => Checkbox(
//         value: value,
//         onChanged: (value) {
//           setState(() {
//             this.value = value!;
//           });
//         });

//     return Column(
//       children: [
//         Container(
//           child: InkWell(
//             onTap: () {},
//             child: ListTile(
//               title: Text(
//                 "",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//               leading: buildChckbox(),
//               trailing: Text(
//                 "",
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
