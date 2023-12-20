import 'package:flutter/material.dart';

class CScreen extends StatefulWidget {
  const CScreen({Key? key}) : super(key: key);

  @override
  State<CScreen> createState() => _CScreenState();
}

class _CScreenState extends State<CScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C screen'),
      ),
      body: const Column(
        children: [
          Text('this sis'),
          Text(' CCCCCCCCCCCCC'),
        ],
      ),
    );
  }
}
