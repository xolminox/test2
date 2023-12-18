import 'package:flutter/material.dart';

class BScreen extends StatefulWidget {
  const BScreen({Key? key}) : super(key: key);

  @override
  State<BScreen> createState() => _BScreenState();
}

class _BScreenState extends State<BScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text('this sis'), Text(' ddd')],
    );
  }
}
