import 'package:flutter/material.dart';

class LearnUnconstrainedBox extends StatelessWidget {
  const LearnUnconstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[100],
      width: 100,
      height: 100,
      child: UnconstrainedBox(
        child: Container(
          color: Colors.blue,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
