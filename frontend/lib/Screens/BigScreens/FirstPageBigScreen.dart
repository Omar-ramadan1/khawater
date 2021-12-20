import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_flutter_platform_interface/src/types/marker.dart';

class FirstPageBigScreen extends StatelessWidget {
  final HashSet<Marker> myMarkers;
  final Function(GoogleMapController googleMapController) onMapCreated;
  const FirstPageBigScreen(this.myMarkers,  this.onMapCreated);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
