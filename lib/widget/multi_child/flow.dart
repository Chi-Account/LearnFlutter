import 'package:flutter/material.dart';

class LearnFlow extends StatelessWidget {
  const LearnFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: StaggeredFlowDelegate(),
      children: [
        createSquare(40, Colors.red),
        createSquare(50, Colors.orange),
        createSquare(60, Colors.yellow),
        createSquare(70, Colors.green),
        createSquare(80, Colors.cyan),
        createSquare(90, Colors.blue),
        createSquare(100, Colors.purple),
      ],
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

class StaggeredFlowDelegate extends FlowDelegate {
  @override
  void paintChildren(FlowPaintingContext context) {
    double baseY = 0;
    for (int i = 0; i < context.childCount; i++) {
      Size? size = context.getChildSize(i);
      if (size != null) {
        double x = (i % 2 == 0) ? 0 : context.size.width - size.width;
        double y = baseY;
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
        baseY += size.height;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return const Size(double.infinity, double.infinity);
  }

  @override
  bool shouldRepaint(covariant FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}
