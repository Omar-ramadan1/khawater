import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/button_widget.dart';
import 'package:food_app/Widgets/textfieldaddresswidget.dart';
import 'package:food_app/contant/constant.dart';
import 'package:food_app/models/UserData.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:provider/src/provider.dart';
import 'package:http/http.dart' as http;

class AddressWidget extends StatefulWidget {
  const AddressWidget({ Key? key }) : super(key: key);

  @override
  _AddressWidgetState createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    late Map? sharedPrefrenceCheck;
  Map data =addressMapData;
  onChange(value, VariableName) {
    setState(() {
      data[VariableName] = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   context.read<UserData>().getUserAddressData();
    sharedPrefrenceCheck = context.read<UserData>().userAddressData;
    // print(context.read<UserData>().userAddressData);
    // print(context.read<UserData>().userAddressData?['streetname']);
    // print(context.read<UserData>().userAddressData?['town']);
    // print(context.read<UserData>().userAddressData?['postcode']);



    
   // print(sharedPrefrenceCheck);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      //data = context.watch<UserData>().userAddressData;
    });
  }

  postDateaddresses() async {
    print(data);
     print(data['streetname']);
    print(data['postcode']);
        print(data['town']);
    var response = await http.post(Uri.parse('${serverURL}address'), body: {
      "streetname": data['streetname'],
      "postcode":data['postcode'],
      "town": data['town'],
    });
    print(response.body);
    Map jsonBody = jsonDecode(response.body);
    Map addressdata = {
      "id": jsonBody["id"],
      "streetname": jsonBody["streetname"],
      "postcode": jsonBody["postcode"],
      "town": jsonBody["town"],
    };
    context.read<UserData>().setUserAddressDataFunc(addressdata);
  }

  updatDateAddresses() async {
   print(data);
    print(data['streetname']);
    print(data['postcode']);
        print(data['town']);

    var response = await http.put(Uri.parse('${serverURL}address'), body: {
      "id": context.read<UserData>().userAddressData!["id"],
      "streetname":  data['streetname'],
      "postcode": data['postcode'],
      "town": data['town'],
    });
    Map jsonBody = jsonDecode(response.body);
    Map addressdata = {
      "id": jsonBody["id"],
      "streetname": jsonBody["streetname"],
      "postcode": jsonBody["postcode"],
      "town": jsonBody["town"],
    };
    context.read<UserData>().setUserAddressDataFunc(addressdata);
  }

  TextEditingController streetnameController = TextEditingController();
  TextEditingController townController = TextEditingController();
  TextEditingController postcodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Add an addresse".tr,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Textfieldaddres(
                        context.read<UserData>().userAddressData?['streetname'] ==null?
                        "Street name & number":
                        context.read<UserData>().userAddressData?['streetname']
                        ,
                        "Street name & number".tr,
                        (streetName) =>
                            setState(() => onChange(streetName, "streetname")),
                        Icon(Icons.streetview_sharp),
                        (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your streetname';
                          }
                          if (value.trim().length < 3) {
                            return 'Username must be at least 3 characters in length';
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Textfieldaddres(
                       
                        context.read<UserData>().userAddressData?['town'] ==null?
                        "Town or City Area*":
                        context.read<UserData>().userAddressData?['town'],
                        "Town or City Area*".tr,
                        (town) => setState(() => onChange(town, "town")),
                        Icon(Icons.location_on_rounded),
                        (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your TownName';
                          }
                          if (value.trim().length < 3) {
                            return 'Username must be at least 3characters in length';
                          }

                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Textfieldaddres(
                  
                                 context.read<UserData>().userAddressData?['postcode'] ==null?
                        "Postcode, Block,intercom where tp park*":
                        context.read<UserData>().userAddressData?['postcode'],
                        "Postcode, Block,intercom where tp park*".tr,
                        (postcode) => setState(
                          () => onChange(postcode, "postcode"),
                        ),
                        Icon(Icons.info),
                        (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your postcode';
                          }
                          if (value.length != 4) {
                            return "postcode Number must be of 4 digit";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Button_Widget("Save".tr, MediaQuery.of(context).size.width,
                  75, Colors.orange, () {
                if (_formKey.currentState!.validate()) {
                  if (context.read<UserData>().userAddressData == null) {
                    postDateaddresses();
                    context.read<UserData>().setUserAddressDataFunc(data);
                    final snackBar = SnackBar(
                        content: Text(
                      "your information have been saved ",
                      style: TextStyle(fontSize: 18),
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }else{
                    updatDateAddresses();
                             context.read<UserData>().setUserAddressDataFunc(data);
                    final snackBar = SnackBar(
                        content: Text(
                      "your information have been saved ",
                      style: TextStyle(fontSize: 18),
                    ));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);


                  }
                }
              }),
            ),
          ],
        ),
      );
  }
}