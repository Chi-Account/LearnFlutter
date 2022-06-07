import 'package:flutter/material.dart';

class LearnAlign extends StatelessWidget {
  const LearnAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      widthFactor: 3,
      heightFactor: 3,
      child: Container(
        color: Colors.blue,
        width: 50,
        height: 50,
      ),
    );
  }
}
