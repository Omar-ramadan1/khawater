import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CartItem extends ChangeNotifier {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  List _cartList = [];

  int _total = 0;
  int get total => _total;
  set total(int totalprice) {
    _total = totalprice;
    notifyListeners();
  }

  List get cartList => _cartList;
  set cartList(List cartListParameter) {
    _cartList = cartListParameter;
    notifyListeners();
  }

  addCartItem(Map productInfo, int quantity, bool isXlarge) async {
    final SharedPreferences prefs = await _prefs;
    if (_cartList.any((element) => element["id"] == productInfo["id"])) {
      removeCartItem(productInfo);
      addCartItem(productInfo, quantity, isXlarge);
      //  final SharedPreferences prefs =  await _prefs;
      //  prefs.setString("cartshop",jsonEncode( addCartItem(productInfo , quantity,price )) );
    } else {
      productInfo["quantity"] = quantity;
      if (isXlarge == true) {
        total += int.parse(productInfo["pricemax"].toString()) *
            int.parse(productInfo["quantity"].toString());
        productInfo["xlarge"] = isXlarge;
        _cartList.add(productInfo);
      } else {
        total += int.parse(productInfo["price"].toString()) *
            int.parse(productInfo["quantity"].toString());
        productInfo["xlarge"] = isXlarge;
        _cartList.add(productInfo);
      }
    }

    notifyListeners();
    prefs.setString("cartList", jsonEncode(cartList));

  }

  removeCartItem(Map productInfo) async {
    final SharedPreferences prefs = await _prefs;
    var filter = [];

    cartList.forEach((e) {
      if (e["id"] == productInfo["id"]) {
        if (e["xlarge"] == true) {
          total -= int.parse(e["pricemax"].toString()) *
              int.parse(e["quantity"].toString());
        } else {
          total -= int.parse(e["price"].toString()) *
              int.parse(e["quantity"].toString());
        }
      } else {
        filter.add(e);
      }
    });
    cartList = filter;
    notifyListeners();
    prefs.setString("cartList", jsonEncode(cartList));
  }
}
