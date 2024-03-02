import 'package:e_wallet/pages/widgets_files/progress_page.dart';
import 'package:flutter/material.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(23),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 238, 252),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Oylik byudjet: "),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 16,
                ),
                label: Text(
                  "1,000,000 so'm",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                  ),
                ),
              ),
              Expanded(
                  child: SizedBox(
                height: 1,
              )),
              Text("4.9%"),
            ],
          ),
          Progress(),
        ],
      ),
    );
  }
}
