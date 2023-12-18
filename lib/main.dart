import 'package:flutter/material.dart';
import 'package:jr_world/screen/ascreen.dart';
import 'package:jr_world/screen/bscreen.dart';
import 'package:jr_world/screen/cscreen.dart';
import 'package:jr_world/screen/dscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JR world',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static TextStyle optionStyle =
      const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);

  List<Widget> body_items = [
    AScreen(),
    BScreen(),
    CScreen(),
    DScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: body_items.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.teal,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'b'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'c'),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'd'),
        ],
      ),
    );
  }
}
