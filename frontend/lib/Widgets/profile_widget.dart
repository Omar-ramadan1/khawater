import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/textfield_widget.dart';
import 'package:food_app/contant/constant.dart';
import 'package:food_app/models/UserData.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:provider/src/provider.dart';
import 'package:http/http.dart' as http;

import 'button_widget.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Map? sharedPrefrenceCheck;
  Map data = profileMapData;
  onChange(value, variableName) {
    setState(() {
      data[variableName] = value;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sharedPrefrenceCheck = context.read<UserData>().userData;
    context.read<UserData>().getUserData();
    print(context.read<UserData>().userData);
    //print(sharedPrefrenceCheck);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      // data = context.watch<UserData>().userData;
    });
  }

  postDateProfile() async {
    print(data);
      print(data['firstname']);
   print(data["lastname"]) ;
   print(data['email']);
   print(data['phone']);
    var response = await http.post(Uri.parse('${serverURL}contacts'), body: {
      "firstname": data["firstname"],
      "lastname": data["lastname"],
      "phone": data["phone"],
      "email": data["email"]
    });
    Map jsonBody = jsonDecode(response.body);
    Map userData = {
      "id": jsonBody["id"],
      "firstname": jsonBody["firstname"],
      "lastname": jsonBody["lastname"],
      "email": jsonBody["email"],
      "phone": jsonBody["phone"],
    };
    context.read<UserData>().setUserDataFunc(userData);
   }

  updatDateProfile() async {
        print(data);

       print(data['firstname']);
   print(data["lastname"]) ;
   print(data['email']);
   print(data['phone']);
    var response = await http.put(Uri.parse('${serverURL}contacts'), body: {
      "id": context.read<UserData>().userData!["id"],
      "firstname": data["firstname"],
      "lastname": data["lastname"],
      "phone": data["phone"],
      "email": data["email"]
    });
    Map jsonBody = jsonDecode(response.body);
    Map userData = {
      "id": jsonBody["id"],
      "firstname": jsonBody["firstname"],
      "lastname": jsonBody["lastname"],
      "email": jsonBody["email"],
      "phone": jsonBody["phone"],
    };
    context.read<UserData>().setUserDataFunc(userData);
  }



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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  // padding: EdgeInsets.fromLTRB(25, 35, 25, 35),
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField_Widget(
                          context.read<UserData>().userData?['firstname'] ==
                                  null
                              ? "Fist Name*".tr
                              : context.read<UserData>().userData?['firstname'],
                          "Fist Name*".tr,
                          Icons.person,
                          MediaQuery.of(context).size.width / 2.3,
                          (firstName) => setState(
                            () => onChange(firstName, "firstname"),
                          ),
                          (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your firstname';
                            }
                            if (value.length < 3) {
                              return 'Username must be at least 3 characters in length';
                            }

                            return null;
                          },
                        ),
                        Container(
                          // color: Colors.amber,
                          width: MediaQuery.of(context).size.width / 2.3,
                          child: TextFormField(
                            initialValue: context
                                        .read<UserData>()
                                        .userData?['lastname'] ==
                                    null
                                ? "Last Name*"
                                : context
                                    .read<UserData>()
                                    .userData?['lastname'],
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your last name';
                              }
                              if (value.length < 3) {
                                return 'Username must be at least 3 characters in length';
                              }

                              return null;
                            },
                            onChanged: (lastName) =>
                                setState(() => onChange(lastName, "lastname")),
                            decoration: InputDecoration(
                              labelText: "Last Name*".tr,

                              isDense: true,

                              border: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 5),
                              ),

                              //  prefixIcon: Icon(Icons.person),
                              disabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.yellow, width: 5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField_Widget(
                      context.read<UserData>().userData?['email'] == null
                          ? "E-mail*".tr
                          : context.read<UserData>().userData?['email'],
                      "E-mail*".tr,
                      Icons.email,
                      MediaQuery.of(context).size.width / 1.15,
                      (email) => setState(() => onChange(email, "email")),
                      (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField_Widget(
                      context.read<UserData>().userData?['phone'] == null
                          ? "phone*".tr
                          : context.read<UserData>().userData?['phone'],
                      "phone*".tr,
                      Icons.phone,
                      MediaQuery.of(context).size.width / 1.15,
                      (telephone) =>
                          setState(() => onChange(telephone, "phone")),
                      (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone';
                        }
                        if (value.length != 11) {
                          return 'telephone must be at least 11 digit ';
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
            child: Button_Widget(
                "Save".tr, MediaQuery.of(context).size.width, 75, Colors.orange,
                () {
              if (_formKey.currentState!.validate()) {
                if (context.read<UserData>().userData == null) {
                  postDateProfile();
                  context.read<UserData>().setUserDataFunc(data);
                  final snackBar = SnackBar(
                      content: Text(
                    "your information have been saved you can buy now",
                    style: TextStyle(fontSize: 14),
                  ));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else {
                  updatDateProfile();
                                    context.read<UserData>().setUserDataFunc(data);

                  final snackBar = SnackBar(
                      content: Text(
                    "your information have been saved you can buy now",
                    style: TextStyle(fontSize: 14),
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
