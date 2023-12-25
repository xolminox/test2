import 'package:flutter/material.dart';
import 'package:jr_world/component/main_calendar.dart';
import 'package:jr_world/component/schedule_bottom_sheet.dart';
import 'package:jr_world/component/schedule_card.dart';
import 'package:jr_world/component/today_banner.dart';
import 'package:jr_world/const/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDate = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: PRIMARY_COLOR,
        onPressed: () {
          showModalBottomSheet(
              isDismissible: true,
              context: context,
              builder: (_) => const ScheduleBotoomSheet());
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            MainCalendar(
              selectedDate: selectedDate,
              onDaySelected: onDaySelected,
            ),
            TodayBanner(selectedDate: selectedDate, count: 3),
            const SizedBox(height: 8),
            const ScheduleCard(startTime: 12, endTime: 14, content: '프로그래밍 공부')
          ],
        ),
      ),
    );
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
