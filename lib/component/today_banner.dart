import 'package:flutter/material.dart';
import 'package:jr_world/const/colors.dart';

class TodayBanner extends StatelessWidget {
  final DateTime selectedDate;
  final int count;

  const TodayBanner({Key? key, required this.selectedDate, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle =
        TextStyle(fontWeight: FontWeight.w600, color: on_primary_color);

    return Container(
      color: primary_color,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${selectedDate.year}년 ${selectedDate.month}월 ${selectedDate.day}일',
              style: textStyle,
            ),
            Text(
              '$count 개',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
