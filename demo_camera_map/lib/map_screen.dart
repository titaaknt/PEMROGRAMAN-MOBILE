import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LatLng lokasi = LatLng(-7.9467, 112.6158); // Malang

    return Scaffold(
      appBar: AppBar(title: const Text("Map")),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: lokasi,
          initialZoom: 15,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.demo_camera_map',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: lokasi,
                width: 40,
                height: 40,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}