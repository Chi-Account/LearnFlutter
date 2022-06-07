import 'package:flutter/material.dart';

class LearnCenter extends StatelessWidget {
  const LearnCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      widthFactor: 3,
      heightFactor: 3,
      child: Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
    );
  }
}
