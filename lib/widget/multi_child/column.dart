import 'package:flutter/material.dart';

class LearnColumn extends StatelessWidget {
  const LearnColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      textBaseline: null,
      children: [
        createSquare(10, Colors.red),
        createSquare(20, Colors.orange),
        createSquare(30, Colors.yellow),
        createSquare(40, Colors.green),
        createSquare(50, Colors.cyan),
        createSquare(60, Colors.blue),
        createSquare(70, Colors.purple),
      ],
    );
  }

  Widget createSquare(double length, Color color) {
    return Container(
      color: color,
      width: length,
      height: length,
    );
  }
}
