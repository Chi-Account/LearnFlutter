import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LearnScrollable extends StatelessWidget {
  const LearnScrollable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollable(
        viewportBuilder: (BuildContext context, ViewportOffset position) {
      return Container();
    });
  }
}
