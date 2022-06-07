import 'package:flutter/material.dart';

class LearnClipOval extends StatelessWidget {
  const LearnClipOval({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset('assets/images/portrait.jpg'),
    );
  }
}
