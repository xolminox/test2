import 'package:flutter/material.dart';
import 'package:jr_world/const/colors.dart';
import 'package:table_calendar/table_calendar.dart';

class MainCalendar extends StatelessWidget {
  final OnDaySelected onDaySelected;
  final DateTime selectedDate;

  const MainCalendar(
      {Key? key, required this.onDaySelected, required this.selectedDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(),
      firstDay: DateTime(1950, 1, 1),
      lastDay: DateTime(2500, 12, 31),

      onDaySelected: onDaySelected,
      selectedDayPredicate: (date) =>
          date.year == selectedDate.year &&
          date.month == selectedDate.month &&
          date.day == selectedDate.day,

      // <<Header Style>>
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
        titleTextStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
      ),
      // <<Calendar Style>>
      calendarStyle: CalendarStyle(
        isTodayHighlighted: true,
        todayDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.teal.withOpacity(0.5),
        ),
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
        ),
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: LIGHT_GREY_COLOR,
        ),
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Colors.blue, width: 3.0),
          color: Colors.transparent,
        ),
        todayTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: DARK_GREY_COLOR),
        defaultTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: DARK_GREY_COLOR),
        weekendTextStyle:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
        selectedTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: DARK_GREY_COLOR),
      ),
    );
  }
}
