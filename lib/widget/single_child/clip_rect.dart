import 'package:flutter/material.dart';

class LearnClipRect extends StatelessWidget {
  const LearnClipRect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget image = Image.asset('assets/images/portrait.jpg');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRect(
          child: Align(
            alignment: AlignmentDirectional.topStart,
            widthFactor: 0.5,
            heightFactor: 0.5,
            child: image,
          ),
        ),
        Align(
          alignment: AlignmentDirectional.topStart,
          widthFactor: 0.5,
          heightFactor: 0.5,
          child: image,
        ),
      ],
    );
  }
}
