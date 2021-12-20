import 'package:flutter/material.dart';
import 'package:food_app/Screens/SmallScreens/cartshopscreen.dart';
import 'package:food_app/Screens/SmallScreens/diliveryScreen.dart';
import 'package:food_app/Widgets/vdivider.dart';

class AppBar_ShowMenu extends StatelessWidget with PreferredSizeWidget {
  final String? imageName;

  const AppBar_ShowMenu({this.imageName});
  // const AppBar_ShowMenu({imageName : this.imageName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.grey, size: 30),
      backgroundColor: Colors.white54,
      shadowColor: Colors.white54,
      actions: <Widget>[
        Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 25,
                ),
                child: Text(
                  imageName != null ? imageName! : "خواطر دمشقيه",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ],
          ),
          Divider_widget(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => DeliveryScreen(),
                ),
              );
            },
            icon: Icon(
              Icons.info_outline,
              size: 31,
              color: Colors.grey,
            ),
          ),
          Divider_widget(),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => Cartshopscreen(),
                ),
              );
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.grey,
              size: 28,
            ),
          ),
        ])
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
