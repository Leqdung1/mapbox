import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class MapBoxWidget extends StatefulWidget {
  @override
  State<MapBoxWidget> createState() => _MapBoxWidgetState();
}

class _MapBoxWidgetState extends State<MapBoxWidget> {
  late MapboxMapController mapController;

  void _onMapCreated(MapboxMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapboxMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(11.939545, 108.458877),
          zoom: 15,
        ),
        styleString: MapboxStyles.SATELLITE_STREETS, 
      ),
    );
  }
}
