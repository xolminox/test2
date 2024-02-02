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
      locale: 'ko_kr',
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
      // <<days of Week Style>>
      daysOfWeekHeight: 25,
      daysOfWeekStyle: DaysOfWeekStyle(
        weekdayStyle:
            TextStyle(fontWeight: FontWeight.w400, color: dark_grey_color),
        weekendStyle:
            const TextStyle(fontWeight: FontWeight.w400, color: Colors.red),
      ),
      // <<Calendar Style>>
      calendarStyle: CalendarStyle(
        cellPadding: EdgeInsets.only(top: 5),
        isTodayHighlighted: true,
        todayDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Colors.teal.withOpacity(0.5),
        ),
        defaultDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: light_grey_color,
        ),
        weekendDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: light_grey_color,
        ),
        selectedDecoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(color: Colors.blue, width: 3.0),
          color: Colors.transparent,
        ),
        todayTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: dark_grey_color),
        defaultTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: dark_grey_color),
        weekendTextStyle:
            const TextStyle(fontWeight: FontWeight.w600, color: Colors.red),
        selectedTextStyle:
            TextStyle(fontWeight: FontWeight.w600, color: dark_grey_color),
      ),
    );
  }
}
