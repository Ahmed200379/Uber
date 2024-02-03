import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:software_project/reusable%20com/text_field.dart';
class GoogleMaps extends StatefulWidget {
  const GoogleMaps({super.key});
  @override
  State<GoogleMaps> createState() => _GoogleMapsState();
}
class _GoogleMapsState extends State<GoogleMaps> {
  @override
  void initState()
  {
    super.initState();
    rootBundle.loadString('assets/map_style.txt').then((string) => _map_style=string);
  }
  String? _map_style;
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  GoogleMapController? mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:  AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Where are you going ?',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
        ),
      centerTitle: true,
      actions:  [
       GestureDetector(
         onTap: ()
           {
             Navigator.pop(context);
           },
           child: Icon(Icons.arrow_forward,color: Colors.white,size: 31,))
      ],
      ),
      floatingActionButton: const Icon(Icons.my_location,size: 45,),
      body:  Stack(
       children: [
         GoogleMap(
           //     mapType: MapType.satellite,
           initialCameraPosition: _kGooglePlex,
           onMapCreated: (GoogleMapController controller) {
             _controller.complete(controller);
             mapController = controller;
             mapController!.setMapStyle(_map_style);
           },
         ),
          const Padding(
           padding: EdgeInsets.only(left: 18,right: 18),
           child: Column(
             children: [
               Text_Search(text: 'From',),
               Text_Search(text: 'To',)
             ],
           ),
         )
       ],
      ),
    );
  }
}
