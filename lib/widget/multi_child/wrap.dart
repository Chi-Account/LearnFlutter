import 'package:flutter/material.dart';

class LearnWrap extends StatelessWidget {
  const LearnWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.center,
        spacing: 10,
        runAlignment: WrapAlignment.end,
        runSpacing: 10,
        crossAxisAlignment: WrapCrossAlignment.start,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        children: [
          createSquare(70, Colors.red),
          createSquare(80, Colors.orange),
          createSquare(90, Colors.yellow),
          createSquare(100, Colors.green),
          createSquare(110, Colors.cyan),
          createSquare(120, Colors.blue),
          createSquare(130, Colors.purple),
        ],
      ),
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
