import 'package:flutter/material.dart';
import 'package:food_app/Screens/MainScreens/FirstPageScreen.dart';
import 'package:food_app/Widgets/appbar_widget.dart';
import 'package:food_app/Widgets/languagewidget.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);
  static const roteName = '/Languanges';

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  //bool value = true;
  bool? _checked = true;
  bool? _checked1 = false;
  @override
  void initState() {
    super.initState();
    if (_checked == _checked1) {
      _checked != _checked1;
    }
  }

  Widget buildChckbox() => Checkbox(
      value: _checked,
      onChanged: (value) {
        setState(() {
          if (value == true) {
            _checked = value;
            _checked1 = false;
          }
        });
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar_widget('Languages'),
      body: ListView(
        children: [
          InkWell(
            child: ListTile(
              leading: Text(
                "English",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                var local = Locale('en', "US");
                Get.updateLocale(local);
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => FirstPageScreen(),
                  ),
                );
              },
            ),
          ),
          Divider(
            color: Colors.grey,
            height: 5,
            thickness: .8,
            indent: 5,
          ),
          InkWell(
            child: ListTile(
              leading: Text(
                "عربي",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                var local = Locale('ar', "AR");
                Get.updateLocale(local);
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                    builder: (context) => FirstPageScreen(),
                  ),
                );
              },
            ),
          ),
          LanguageWidget(),
        ],
      ),
    );
  }
}
