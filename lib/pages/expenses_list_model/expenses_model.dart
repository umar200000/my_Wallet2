import 'package:flutter/material.dart';

class ExpensesModel {
  final String id;
  final String title;
  final DateTime dateTime;
  final String cost;
  final IconData icon;

  ExpensesModel({
    required this.id,
    required this.title,
    required this.dateTime,
    required this.cost,
    this.icon = Icons.access_alarm,
  });
}

class ExpensesList {
  List<ExpensesModel> _list = [
    ExpensesModel(
      id: "id1",
      title: "Soat",
      dateTime: DateTime.now(),
      cost: "145,000",
    ),
    ExpensesModel(
      id: "id2",
      title: "Telefo'n",
      dateTime: DateTime.now(),
      cost: "4,530,000",
      icon: Icons.phone_android,
    ),
  ];

  get items => _list;
}
