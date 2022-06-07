import 'dart:math';

import 'package:flutter/material.dart';

class LearnContainer extends StatelessWidget {
  const LearnContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(1, 1),
            blurRadius: 3,
          ),
        ],
        gradient: LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            Colors.red,
            Colors.orange,
          ],
        ),
      ),
      width: 200,
      height: 150,
      margin: const EdgeInsets.all(50),
      transform: Matrix4.rotationZ(pi / 18),
      transformAlignment: AlignmentDirectional.center,
      child: const Text(
        'Hello world!',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
