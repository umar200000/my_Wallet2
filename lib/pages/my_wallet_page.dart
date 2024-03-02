import 'package:e_wallet/pages/expenses_list_model/expenses_model.dart';
import 'package:e_wallet/pages/widgets_files/budget_page.dart';
import 'package:e_wallet/pages/widgets_files/expenses_list_page.dart';
import 'package:e_wallet/pages/widgets_files/per_next_day.dart';
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
  ExpensesList expensesList = ExpensesList();
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
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            OpenCalendar(openCalendar, _dateTime),
            MoveCalendar(moveForward, moveBack, _dateTime),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Stack(
                children: [
                  Budget(),
                  ExpensesListPage(expensesList.items),
                ],
              ),
            ),
          ],
        ));
  }
}
