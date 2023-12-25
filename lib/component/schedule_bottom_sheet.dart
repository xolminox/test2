import 'package:flutter/material.dart';

class ScheduleBotoomSheet extends StatefulWidget {
  const ScheduleBotoomSheet({Key? key}) : super(key: key);

  @override
  State<ScheduleBotoomSheet> createState() => _ScheduleBotoomSheetState();
}

class _ScheduleBotoomSheetState extends State<ScheduleBotoomSheet> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.white,
      ),
    );
  }
}
