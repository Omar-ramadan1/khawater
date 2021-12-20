import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/SmallScreens/showmenu.dart';
import 'package:food_app/Widgets/button_widget.dart';
import 'package:food_app/Widgets/drawer_menuu.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

// var myMarkers = HashSet<Marker>(); //collection
class FirstPageSmallScreen extends StatelessWidget {
  //static String routename ='/FirstPagee';
  final HashSet<Marker> myMarkers;
  final Function onMapCreated;



   FirstPageSmallScreen(this.myMarkers, this.onMapCreated);


  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      // backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.grey, size: 40),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent.withOpacity(0.05)
      // centerTitle: true,
      ),
      drawer: const Drawer_Widget(),
      body: Stack(children: [
  //dsdds
        GoogleMap(
          initialCameraPosition:
              const CameraPosition(target: LatLng(31.2001, 29.9187), zoom: 10),
          onMapCreated: (GoogleMapController googleMapController) =>
              onMapCreated(googleMapController),
          markers: myMarkers,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          //  top: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.red,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/krs.jpg"),
                  ),
                ),
                margin: EdgeInsets.fromLTRB(3, 8, 3, 8),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Button_Widget(
                            "See Menu&Order".tr,
                            MediaQuery.of(context).size.width / 1.5,
                            40,
                            Colors.blueGrey,
                            () {
                              Navigator.push(
                                context,
                                new MaterialPageRoute(
                                  builder: (context) => ShowMenu(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
