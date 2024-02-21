import 'package:flutter/material.dart';

class MoveCalendar extends StatelessWidget {
  final void Function() moveForward;
  final void Function() moveBack;
  final DateTime dateTime;
  const MoveCalendar(this.moveForward, this.moveBack, this.dateTime,
      {super.key});

  @override
  Widget build(BuildContext context) {
    bool t = dateTime.year == 2023 && dateTime.month == 1;
    bool a = dateTime.year == DateTime.now().year &&
        dateTime.month == DateTime.now().month;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(width: 1, color: t ? Colors.grey : Colors.red)),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              moveBack();
            },
            icon: Icon(
              Icons.arrow_left,
              size: 30,
              color: t ? Colors.grey : Colors.red,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "450,000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Text(
              "so'm",
              style: TextStyle(fontWeight: FontWeight.bold, height: 0.5),
            ),
          ],
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: a ? Colors.grey : Colors.red),
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            onPressed: () {
              moveForward();
            },
            icon: Icon(
              Icons.arrow_right,
              size: 30,
              color: a ? Colors.grey : Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
