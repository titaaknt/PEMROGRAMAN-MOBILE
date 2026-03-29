import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      theme: ThemeData(primarySwatch: Colors.blue), //Theme
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Belajar Flutter',
            style: TextStyle(
              fontSize: 24, 
              fontWeight: FontWeight.bold,
              color: Colors.white, 
              ),
            ), //Text
              backgroundColor: const Color.fromARGB(255, 231, 222, 244),
              actions: [
                IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    //Aksi ketika tombol info ditekan
                    showDialog(
                      context: context, 
                      builder: (context) => AlertDialog(
                        title: const Text('Informasi'),
                        content: const Text(
                          'Ini adalah aplikasi Flutter sederhana.',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context), 
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  },
                  ),
                   IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    //Aksi ketika tombol info ditekan
                  },
                ),
              ],
              //leading: IconButton(
                //icon: const Icon(Icons.menu),
                //onPressed: () {
                  // Aksi ketika tombol menu ditekan
        ),
            body: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Selamat datang di Flutter!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                ),
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                // aksi ketika tombol FAB ditekan
              },
              child: const Icon(Icons.send),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                 //BottomNavigationBarItem(
                  //icon: Icon(Icons.search),
                  //label: 'Search',
               //),
                 //BottomNavigationBarItem(
                  //icon: Icon(Icons.person),
                  //label: 'Profile',
                //),
                BottomNavigationBarItem(
                  icon: Icon(Icons.delete),
                  label: 'Hapus',
                )
              ],
            ),
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: const [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                   ListTile(
                    leading: Icon(Icons.contact_mail),
                    title: Text('Contact Us'),
                   ),
                ],
              ),
            ),
      )
    );
  }
}