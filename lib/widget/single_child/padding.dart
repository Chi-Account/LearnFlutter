import 'package:flutter/material.dart';

class LearnPadding extends StatelessWidget {
  const LearnPadding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(color: Colors.blue),
    );
  }
}
