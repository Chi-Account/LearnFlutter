import 'package:flutter/material.dart';

class LearnClipRRect extends StatelessWidget {
  const LearnClipRRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset('assets/images/portrait.jpg'),
    );
  }
}
