import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapService extends StatefulWidget {
  const MapService({Key? key}) : super(key: key);

  @override
  State<MapService> createState() => _MapServiceState();
}

class _MapServiceState extends State<MapService> {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: CameraPosition(
            zoom: 15, target: LatLng(26.027540812499407, 88.46447399212555)));
  }
}
