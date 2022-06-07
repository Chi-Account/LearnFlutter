import 'package:flutter/material.dart';

class LearnRotatedBox extends StatelessWidget {
  LearnRotatedBox({Key? key}) : super(key: key);

  final Widget helloWorld = Container(
    color: Colors.blue,
    child: const Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Text(
        'Hello world!',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.blue[100],
        child: RotatedBox(
          quarterTurns: 1,
          child: helloWorld,
        ),
      ),
    );
  }
}
