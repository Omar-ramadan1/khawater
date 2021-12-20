import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:food_app/Widgets/appbarKhawater.dart';
import 'package:food_app/Widgets/diliverywidget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DeliveryScreen extends StatefulWidget {
  static const roteName = '/DeliveryScreen';

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarKhawater('خواطر دمشقيه'),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.7,
                width: MediaQuery.of(context).size.width / 1.1,
                color: Colors.red,
                child: GoogleMap(
                  initialCameraPosition: const CameraPosition(
                      target: LatLng(31.2001, 29.9187), zoom: 10),
                  onMapCreated: (GoogleMapController googleMapController) =>
                      onMapCreated(googleMapController),
                  markers: myMarkers,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          DiliveryWidget(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
