import 'package:flutter/material.dart';

class LearnSizedBox extends StatelessWidget {
  const LearnSizedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        color: Colors.blue,
        width: 0,
        height: 200,
      ),
    );
  }
}
