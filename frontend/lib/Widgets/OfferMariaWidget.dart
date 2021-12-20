import 'package:flutter/material.dart';
import 'package:food_app/Screens/SmallScreens/sandwichScreen.dart';

import 'listtile_widget.dart';

class OfferMariaWidget extends StatelessWidget {
  final Map productInfo;
  const OfferMariaWidget(this.productInfo);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (productInfo['category']=="MA")
        
        Listtile_widet(productInfo["name"], productInfo["price"].toString(),
            () {
             Navigator.pushNamed(context, SandwichScreen.roteName,
                arguments: productInfo);
        }),
        //         if (productInfo['category']=="SU")
        //               Listtile_widet(productInfo["name"], productInfo["price"].toString(),
        //     () {
        //      Navigator.pushNamed(context, SandwichScreen.roteName,
        //         arguments: productInfo);
        // }),



        
      ],
    );
  }
}
