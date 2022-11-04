import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:pdf/pdf.dart';

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
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentIndex = 0;
  final List <Widget> screens=[
    const MainPage(),
    //MenuPage(),
    //LocationPage(),
    //ContactPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Null Space',textAlign: TextAlign.center)),
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
              icon: const Icon(Icons.directions),
              title: const Text("Ubicación"),
              selectedColor: Colors.pink,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Contact"),
              selectedColor: Colors.pink,
            ),
          ],
        ),
  );
}
        