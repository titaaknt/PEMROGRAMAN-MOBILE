import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Agnes',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu Contoh Layout')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Stateful (Ubah Warna)'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const GantiWarnaPage()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Single Child'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const SingleChildExample()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Column'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ColumnExample()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Stack'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const StackExample()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GantiWarnaPage extends StatefulWidget {
  const GantiWarnaPage({super.key});

  @override
  State<GantiWarnaPage> createState() => _GantiWarnaPageState();
}

class _GantiWarnaPageState extends State<GantiWarnaPage> {
  bool _isBlue = true;

  void _ubahWarna() {
    setState(() {
      _isBlue = !_isBlue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isBlue ? Colors.blue[100] : Colors.pink[100],
      appBar: AppBar(
        title: const Text('Ubah Warna'),
        backgroundColor: _isBlue ? Colors.blue : Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _isBlue ? 'Warna Biru' : 'Warna Pink',
              style: TextStyle(
                fontSize: 24,
                color: _isBlue ? Colors.blue[900] : Colors.pink[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _ubahWarna,
              child: const Text('Ubah Warna'),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleChildExample extends StatelessWidget {
  const SingleChildExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Child')),
      body: const Center(
        child: Text(
          'Hello Flutter!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [Text('Ini baris pertama'), Text('Ini baris kedua')],
      ),
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 200, height: 200, color: Colors.blue),
            Container(width: 150, height: 150, color: Colors.blueAccent),
            const Text(
              'Tumpuk!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}