import 'package:flutter/material.dart';

class LearnDecoratedBox extends StatelessWidget {
  const LearnDecoratedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(
            Radius.circular(5),
          ),
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Colors.orange,
              Colors.yellow,
              Colors.green,
              Colors.cyan,
              Colors.blue,
              Colors.purple,
            ],
          ),
        ),
        position: DecorationPosition.background,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Text(
            'Hello world!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
