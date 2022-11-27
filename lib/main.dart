// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'ContactPage.dart';
import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) =>  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bottom Navigation Bar Null Space',
        home: const MainPage(),
        theme: ThemeData(
          primarySwatch: Colors.pink,
        ),
  );
        
}
//Mi Statefull
class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  final List <Widget> screens=[
    HomePage(),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Null Space'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.phone),
            tooltip: 'Contacto',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Contacto'),
                    ),
                    body: HomePage(),
                  );
                },
              ));
            },
          ),
        ],
        ),
        
        body: IndexedStack(
          index: _currentIndex,
          children: screens,
        ),

          bottomNavigationBar: SalomonBottomBar(
            currentIndex: _currentIndex,
            onTap: (i) => setState(() => _currentIndex = i),
            items: [
              /// Home
              SalomonBottomBarItem(
                icon: const Icon(Icons.home),
                title: const Text("Home"),
                selectedColor: Colors.pink,
              ),

              /// Likes
              SalomonBottomBarItem(
                icon: const Icon(Icons.restaurant_menu),
                title: const Text("Menú"),
                selectedColor: Colors.pink,
              ),

              /// Search
              SalomonBottomBarItem(
                icon: const Icon(Icons.wifi),
                title: const Text("Conexión"),
                selectedColor: Colors.pink,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(Icons.directions),
                title: const Text("Ubicción"),
                selectedColor: Colors.pink,
              ),
            ],
          ),
        
  );
}
}
        