import 'package:flutter/material.dart';

class LearnFractionallySizedBox extends StatelessWidget {
  const LearnFractionallySizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.5,
      child: Container(color: Colors.blue),
    );
  }
}
