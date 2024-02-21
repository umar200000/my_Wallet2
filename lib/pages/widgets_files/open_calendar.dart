import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OpenCalendar extends StatelessWidget {
  final DateTime dateTime;
  final void Function(BuildContext context) openCalendar;
  const OpenCalendar(this.openCalendar, this.dateTime, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        openCalendar(context);
      },
      child: Text(
        DateFormat("MMMM, yyyy").format(dateTime),
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
