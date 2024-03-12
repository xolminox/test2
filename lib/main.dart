import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:jr_world/const/colors.dart';
import 'package:jr_world/screen/bscreen.dart';
import 'package:jr_world/screen/cscreen.dart';
import 'package:jr_world/screen/dscreen.dart';
import 'package:jr_world/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting();
  runApp(const ProviderScope(child: MyApp()));
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

  List<Widget> bodyItems = [
    const HomeScreen(),
    BScreen(),
    const CScreen(),
    const DScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bodyItems.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 2,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: secondary_color,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: 'Calendar'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'b'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'c'),
          BottomNavigationBarItem(icon: Icon(Icons.send), label: 'd'),
        ],
      ),
    );
  }
}
