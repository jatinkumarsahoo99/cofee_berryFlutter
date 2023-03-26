import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/mapviewscreen_controller.dart';

class MapviewscreenView extends GetView<MapviewscreenController> {
   MapviewscreenView({Key? key}) : super(key: key);

   MapviewscreenController controller = Get.find<MapviewscreenController>() ;

/*  GoogleMapController? mapController;

  final LatLng _center = const LatLng(37.7749, -122.4194);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Map Example'),
        ),
        body:
          Container()
      ),
    );
  }
}
