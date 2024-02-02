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
      floatingActionButton: _floatingActionButton(),
      appBar: AppBar(
        title: const Text('Calendar'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              MainCalendar(
                selectedDate: selectedDate,
                onDaySelected: onDaySelected,
              ),
              TodayBanner(selectedDate: selectedDate, count: 3),
              const SizedBox(height: 8),
              const ScheduleCard(
                  startTime: 12, endTime: 14, content: '프로그래밍 공부')
            ],
          ),
        ),
      ),
    );
  }

  Widget _floatingActionButton() {
    return FloatingActionButton(
      backgroundColor: primary_color,
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true, // 이걸 설정하지 않으면 bottomsheet가 50% 이상 올라오지 않음
            isDismissible: true,
            context: context,
            builder: (_) => const ScheduleBottomSheet());
      },
      child: const Icon(
        Icons.add,
        color: on_primary_color,
      ),
    );
  }

  void onDaySelected(DateTime selectedDate, DateTime focusedDate) {
    setState(() {
      this.selectedDate = selectedDate;
    });
  }
}
