import 'package:flutter/material.dart';
import 'camera_simple.dart';
import 'camera_advanced.dart';
import 'map_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Camera & Map',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("MENU TUGAS")),
      body: ListView(
        children: [
          ListTile(
            title: const Text("📸 Camera Basic"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CameraSimple()),
              );
            },
          ),
          ListTile(
            title: const Text("🎛️ Camera Advanced"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CameraAdvanced()),
              );
            },
          ),
          ListTile(
            title: const Text("🗺️ Map"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const MapScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}