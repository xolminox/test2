import 'package:flutter/material.dart';

class AScreen extends StatefulWidget {
  const AScreen({Key? key}) : super(key: key);

  @override
  State<AScreen> createState() => _AScreenState();
}

class _AScreenState extends State<AScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text('AAAAA')],
    );
  }
}
