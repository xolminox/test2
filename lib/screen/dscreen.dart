import 'package:flutter/material.dart';

class DScreen extends StatefulWidget {
  const DScreen({Key? key}) : super(key: key);

  @override
  State<DScreen> createState() => _DScreenState();
}

class _DScreenState extends State<DScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('D screen'),
      ),
      body: const Column(
        children: [
          Text('this sis'),
          Text(' DDDDDDDDDDDD'),
        ],
      ),
    );
  }
}
