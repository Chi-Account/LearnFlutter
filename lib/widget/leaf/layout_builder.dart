import 'package:flutter/material.dart';

class LearnLayoutBuilder extends StatelessWidget {
  const LearnLayoutBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SeveralSquare(),
        SizedBox(
          width: 200,
          child: SeveralSquare(),
        ),
        SizedBox(
          width: 100,
          child: SeveralSquare(),
        ),
      ],
    );
  }
}

class SeveralSquare extends StatelessWidget {
  const SeveralSquare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (
        BuildContext context,
        BoxConstraints constraints,
      ) {
        int squareCount = constraints.maxWidth ~/ 100;
        List<Widget> widgetList = List.generate(
          squareCount,
          (index) => createSquare(
            100,
            Colors.blue[index % 9 * 100 + 100]!,
          ),
        );
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widgetList,
        );
      },
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
