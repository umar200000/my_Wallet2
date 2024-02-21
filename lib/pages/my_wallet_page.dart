import 'package:e_wallet/pages/widgets_files/move_calendar_oneday.dart';
import 'package:e_wallet/pages/widgets_files/open_calendar.dart';
import 'package:flutter/material.dart';
import 'package:month_picker_dialog/month_picker_dialog.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});
  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet> {
  DateTime _dateTime = DateTime.now();

  void openCalendar(BuildContext context) {
    showMonthPicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2023),
      lastDate: DateTime.now(),
    ).then((value) {
      if (value != null) {
        setState(() {
          _dateTime = value;
        });
      }
    });
  }

  void moveForward() {
    if (_dateTime.year == DateTime.now().year &&
        _dateTime.month == DateTime.now().month) return;
    setState(() {
      _dateTime = DateTime(_dateTime.year, _dateTime.month + 1);
    });
  }

  void moveBack() {
    if (_dateTime.year == 2023 && _dateTime.month == 1) return;
    setState(() {
      _dateTime = DateTime(_dateTime.year, _dateTime.month - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Wallet"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              OpenCalendar(openCalendar, _dateTime),
              MoveCalendar(moveForward, moveBack, _dateTime),
            ],
          ),
        ));
  }
}
