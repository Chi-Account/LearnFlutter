import 'package:flutter/material.dart';

class LearnLimitedBox extends StatelessWidget {
  const LearnLimitedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        maxHeight: 100,
        child: Container(
          color: Colors.blue,
          width: 50,
          height: 200,
        ),
      ),
    );
  }
}
