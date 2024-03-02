import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 5,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(212, 219, 239, 1),
        borderRadius: BorderRadius.circular(5),
      ),
      child: FractionallySizedBox(
        heightFactor: 2,
        widthFactor: 0.3,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.red,
                Colors.red,
                Colors.red.shade100,
                Colors.red,
              ]),
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 10,
                  spreadRadius: -3,
                )
              ]),
        ),
      ),
    );
  }
}
