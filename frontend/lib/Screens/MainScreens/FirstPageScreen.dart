// ignore_for_file: file_names

import 'dart:collection';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/BigScreens/FirstPageBigScreen.dart';
import 'package:food_app/Screens/MainScreens/Loginscreen.dart';
import 'package:food_app/Screens/SmallScreens/FirstPageSmallScreen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FirstPageScreen extends StatefulWidget {
  const FirstPageScreen({Key? key}) : super(key: key);
  static const roteName = '/FirstPagee';

  @override
  _FirstPageScreenState createState() => _FirstPageScreenState();
}

class _FirstPageScreenState extends State<FirstPageScreen> {
  var myMarkers = HashSet<Marker>(); //collection

  onMapCreated(GoogleMapController googleMapController) {
    setState(() {
      myMarkers.add(
        Marker(
          markerId: const MarkerId('1'),
          position: const LatLng(31.2001, 29.9187),
          visible: true,
          infoWindow: InfoWindow(
            title: 'خواطر دمشقيه',
            onTap: () {},
          ),
        ),
      );
    });
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Marker>('myMarkers', myMarkers.first));
  }
//das
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 700
        ? FirstPageSmallScreen(myMarkers, onMapCreated)
        : FirstPageBigScreen(myMarkers, onMapCreated);
        
  }
}
