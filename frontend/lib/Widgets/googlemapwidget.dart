// import 'dart:collection';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class GoogleMapWidget extends StatefulWidget {
//   final HashSet<Marker> myMarkers;
//   final Function onMapCreated;
//   GoogleMapWidget(this.myMarkers, this.onMapCreated);

//   @override
//   _GoogleMapWidgetState createState() => _GoogleMapWidgetState();
// }

// class _GoogleMapWidgetState extends State<GoogleMapWidget> {
//   var myMarkers = HashSet<Marker>(); //collection
//   onMapCreated(GoogleMapController googleMapController) {
//     setState(() {
//       myMarkers.add(
//         Marker(
//           markerId: const MarkerId('1'),
//           position: const LatLng(31.2001, 29.9187),
//           visible: true,
//           infoWindow: InfoWindow(
//             title: 'خواطر دمشقيه',
//             onTap: () {},
//           ),
//         ),
//       );
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GoogleMap(
//       initialCameraPosition:
//           const CameraPosition(target: LatLng(31.2001, 29.9187), zoom: 10),
//       onMapCreated: (GoogleMapController googleMapController) =>
//           onMapCreated(googleMapController),
//       markers: myMarkers,
//     );
//   }
// }
