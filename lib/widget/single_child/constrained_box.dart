import 'package:flutter/material.dart';

class LearnConstrainedBox extends StatelessWidget {
  const LearnConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 0,
        maxWidth: 100,
        minHeight: 200,
        maxHeight: double.infinity,
      ),
      child: Container(
        color: Colors.blue,
        width: double.infinity,
        height: 100,
      ),
    );
  }
}
