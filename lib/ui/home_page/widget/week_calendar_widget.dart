import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class WeekCalendarWidget extends StatefulWidget {
  const WeekCalendarWidget({super.key});

  @override
  State<WeekCalendarWidget> createState() => _WeekCalendarWidgetState();
}

class _WeekCalendarWidgetState extends State<WeekCalendarWidget> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
      focusedDay: DateTime.now(), 
      firstDay: DateTime.utc(2000, 1, 1), lastDay: DateTime.utc(2100, 12, 31),
      
      calendarFormat: CalendarFormat.week,
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
      ),
      calendarStyle: const CalendarStyle(
        todayDecoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        selectedDecoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
        selectedTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}