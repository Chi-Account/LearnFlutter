import 'dart:math';

import 'package:flutter/material.dart';

class LearnTransform extends StatelessWidget {
  LearnTransform({Key? key}) : super(key: key);

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
    return scale();
  }

  Widget transform() {
    return Container(
      color: Colors.blue[100],
      child: Transform(
        transform: Matrix4.rotationX(pi),
        alignment: AlignmentDirectional.bottomCenter,
        child: helloWorld,
      ),
    );
  }

  Widget translate() {
    return Center(
      child: Container(
        color: Colors.blue[100],
        child: Transform.translate(
          offset: const Offset(100, 100),
          child: helloWorld,
        ),
      ),
    );
  }

  Widget rotate() {
    return Center(
      child: Container(
        color: Colors.blue[100],
        child: Transform.rotate(
          angle: pi,
          child: helloWorld,
        ),
      ),
    );
  }

  Widget scale() {
    return Center(
      child: Container(
        color: Colors.blue[100],
        child: Transform.scale(
          scale: 2,
          child: helloWorld,
        ),
      ),
    );
  }
}
