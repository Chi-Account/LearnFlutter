import 'package:flutter/material.dart';

class LearnStack extends StatelessWidget {
  const LearnStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Stack(
        alignment: AlignmentDirectional.center,
        textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: createSquare(100, Colors.red),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: createSquare(100, Colors.orange),
          ),
          createSquare(100, Colors.yellow),
          Positioned(
            left: 0,
            bottom: 0,
            child: createSquare(100, Colors.green),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: createSquare(100, Colors.cyan),
          ),
        ],
      ),
    );
  }

  Widget createSquare(double length, Color color) {
    return Container(
      color: color,
      width: length,
      height: length,
    );
  }
}
