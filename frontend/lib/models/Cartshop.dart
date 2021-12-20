import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartShop extends ChangeNotifier {
    final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();


Map? _cartshop ;

Map? get cartshop => _cartshop;

set cartshop(Map? cartshopParameter){

_cartshop = cartshopParameter;
    notifyListeners();

}
  void setCartshopdata(Map? cartDataParameter) async {
    cartshop = cartDataParameter;
    final SharedPreferences prefs = await _prefs;
    prefs.setString("cartshop",jsonEncode(cartDataParameter) );
    notifyListeners();
  }
    void getCartshopData() async {
    final SharedPreferences prefs = await _prefs;
        print(prefs.getString("cartshop"));

    cartshop = jsonDecode(prefs.getString("cartshop") == null
        ? "null"
        : prefs.getString("cartshop")!);
    notifyListeners();
  }



}