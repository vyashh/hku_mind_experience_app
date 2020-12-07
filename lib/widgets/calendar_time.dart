import 'package:flutter/material.dart';
import 'package:flutter_week_view/flutter_week_view.dart';

class CalendarTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);
    return DayView(
      initialTime: const HourMinute(hour: 7),
      date: now,
      dayBarStyle: DayBarStyle(
        textStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
      events: [
        FlutterWeekViewEvent(
          title: 'Date w Sam',
          description: 'Dinner at Nobu',
          start: date.add(const Duration(hours: 18)),
          end: date.add(
            const Duration(hours: 20, minutes: 30),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        // FlutterWeekViewEvent(
        //   title: 'An event 2',
        //   description: 'A description 2',
        //   start: date.add(const Duration(hours: 19)),
        //   end: date.add(const Duration(hours: 22)),
        // ),
      ],
      style: DayViewStyle.fromDate(
        date: date,
        currentTimeCircleColor: Theme.of(context).primaryColor,
        headerSize: 0,
        backgroundRulesColor: Theme.of(context).primaryColor,
        currentTimeRuleColor: Theme.of(context).primaryColor,
        hourRowHeight: 50,
        
      ),
    );
  }
}
