import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';

import 'package:latlong2/latlong.dart';


class NearestHospital extends StatefulWidget {
  const NearestHospital({Key? key}) : super(key: key);

  @override
  State<NearestHospital> createState() => _NearestHospitalState();
}


class _NearestHospitalState extends State<NearestHospital> {
  Position? _position;
  void _getCurrentLocation() async {
    Position position = await _determinePosition();
    setState(() {
      _position = position;
    });
  }
  Future<Position> _determinePosition() async {
    LocationPermission permission;

    permission = await Geolocator.checkPermission();

    if(permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied) {
        return Future.error('Location Permissions are denied');
      }
    }

    return await Geolocator.getCurrentPosition();
  }


  @override
  Widget build(BuildContext context) {

    var marker = <Marker>[];
    marker = [
      Marker(point: LatLng(-1.9306, 30.1529),
        builder:(context) => Icon(Icons.location_on, size: 45.0, color: Colors.purple,),
      ),
      Marker(point: LatLng(-1.92545, 30.11225),
        builder:(context) => Icon(Icons.location_city, size: 45.0, color: Colors.deepPurple,),
      ),
      Marker(point: LatLng(-1.95697, 30.10581),
        builder:(context) => Icon(Icons.location_city, size: 45.0, color: Colors.deepPurple,),
      ),
      Marker(point:LatLng(-1.93799, 30.13148),
        builder:(context) => Icon(Icons.location_city, size: 45.0, color: Colors.deepPurple,),
      ),
      Marker(point: LatLng(-1.97427, 30.16767),
        builder:(context) => Icon(Icons.location_city, size: 45.0, color: Colors.deepPurple,),
     ),

    ];

    return Scaffold(
      body: new FlutterMap(

        options: new MapOptions(
          center: LatLng(-1.9306, 30.1529),

          zoom: 12.0,
        ),
        children: [
          new TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: ['a', 'b', 'c'],
          ),
          new MarkerLayer(
            markers: marker,

          ),

          ElevatedButton(
            child: Text(
              'Get Location',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: _getCurrentLocation,

          ),
          _position != null ? Text('Current Location: ' + _position.toString()) :
          Text(''),





        ]
      ),




    );
  }
}

