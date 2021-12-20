import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/MainScreens/Loginscreen.dart';
import 'package:food_app/Screens/MainScreens/SignUpScreen.dart';
import 'package:food_app/Screens/SmallScreens/AboutScreen.dart';
import 'package:food_app/Screens/SmallScreens/FirstPageSmallScreen.dart';
import 'package:food_app/Screens/SmallScreens/Languagesscreen.dart';
import 'package:food_app/Screens/SmallScreens/addresses_screen.dart';
import 'package:food_app/Screens/SmallScreens/buy_item_screen.dart';
import 'package:food_app/Screens/SmallScreens/cartshopscreen.dart';
import 'package:food_app/Screens/SmallScreens/diliveryScreen.dart';
import 'package:food_app/Screens/SmallScreens/mealsdetailsscree.dart';
import 'package:food_app/Screens/SmallScreens/privacy_screen.dart';
import 'package:food_app/Screens/SmallScreens/profile_screen.dart';
import 'package:food_app/Screens/SmallScreens/sandwichScreen.dart';
import 'package:food_app/Screens/SmallScreens/showmenu.dart';
import 'package:food_app/Screens/SmallScreens/splashscreen.dart';
import 'package:food_app/Screens/SmallScreens/terms_screen.dart';
import 'package:food_app/contant/languagesloaclstrings.dart';
import 'package:food_app/models/CartItem.dart';
import 'package:food_app/models/Cartshop.dart';
import 'package:provider/provider.dart';

import 'Screens/MainScreens/FirstPageScreen.dart';
import 'models/UserData.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserData()),
        ChangeNotifierProvider(create: (_) => CartItem()),
        ChangeNotifierProvider(create: (_) => CartShop()),

      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     translations: LanguagesLocalString(),
     locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: const Color(0xffb74093)),
      home:  SplashScreen(),
      routes: {
        FirstPageScreen.roteName: (ctx) => FirstPageScreen(),
        ProfileScreen.roteName: (ctx) =>  ProfileScreen(),
        Addresses_screen.roteName: (ctx) => Addresses_screen(),
        Terms_screen.roteName: (ctx) =>  Terms_screen(),
        AboutScreen.routename: (ctx) => const AboutScreen(),
        Privacy_screen.roteName: (ctx) => const Privacy_screen(),
        ShowMenu.roteName: (ctx) => const ShowMenu(),
        MealScreen.roteName: (ctx) => MealScreen(),
        LanguageScreen.roteName: (ctx) => LanguageScreen(),
        Cartshopscreen.roteName: (ctx) => Cartshopscreen(),
        SandwichScreen.roteName: (ctx) => SandwichScreen(),
        DeliveryScreen.roteName: (ctx) => DeliveryScreen(),
        Buy_item_Screen.roteName:(ctx)=>Buy_item_Screen(),
        Login.routename:(ctx)=>Login(),
        SingUp.routename:(ctx)=>SingUp()
      },
    );
  }
}
