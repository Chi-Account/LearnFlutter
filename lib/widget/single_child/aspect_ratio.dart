import 'package:flutter/material.dart';

class LearnAspectRatio extends StatelessWidget {
  const LearnAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4.0 / 3.0,
      child: Container(color: Colors.blue),
    );
  }
}
