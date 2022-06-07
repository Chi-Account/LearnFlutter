import 'package:flutter/material.dart';

class LearnFlex extends StatelessWidget {
  const LearnFlex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.ltr,
      verticalDirection: VerticalDirection.down,
      textBaseline: null,
      clipBehavior: Clip.none,
      children: [
        Expanded(
          flex: 1,
          child: Container(color: Colors.red),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.orange),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.yellow),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.green),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.cyan),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.blue),
        ),
        Expanded(
          flex: 1,
          child: Container(color: Colors.purple),
        ),
      ],
    );
  }
}
