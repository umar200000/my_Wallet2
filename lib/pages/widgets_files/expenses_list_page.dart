import 'package:flutter/material.dart';

import '../expenses_list_model/expenses_model.dart';
import 'package:intl/intl.dart';

class ExpensesListPage extends StatelessWidget {
  final List<ExpensesModel> list;
  const ExpensesListPage(this.list, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60),
            topRight: Radius.circular(60),
          ),
        ),
        child: ListView.builder(
          padding: EdgeInsets.only(
            top: 30,
            left: 10,
            right: 10,
          ),
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(list[index].icon),
              title: Text(
                list[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                DateFormat("d-MMMM-y").format(list[index].dateTime),
                style: TextStyle(fontSize: 13),
              ),
              trailing: Text("${list[index].cost} so'm"),
            );
          },
          itemCount: list.length,
        ),
      ),
    );
  }
}
