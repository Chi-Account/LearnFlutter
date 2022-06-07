import 'package:flutter/material.dart';

class LearnText extends StatelessWidget {
  const LearnText({Key? key}) : super(key: key);

  final Divider divider = const Divider();

  @override
  Widget build(BuildContext context) {
    String text = 'Hello world!';
    TextSpan textSpan = TextSpan(
      text: '$text\n',
      children: const [
        TextSpan(
          text: 'https://www.helloworld.com/',
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
    return SingleChildScrollView(
      child: DefaultTextStyle(
        style: const TextStyle(color: Colors.black, fontSize: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            divider,
            Text(
              text,
              style: TextStyle(
                inherit: false,
                color: Colors.black,
                backgroundColor: Colors.red[100],
                fontSize: 20,
                height: 2,
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
                decorationStyle: TextDecorationStyle.solid,
                fontFamily: 'Nunito',
              ),
            ),
            divider,
            Text(
              '$text ' * 5,
              textAlign: TextAlign.justify,
            ),
            divider,
            Text(
              '$text ' * 5,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            divider,
            Text(
              text,
              textScaleFactor: 2,
            ),
            divider,
            Text.rich(textSpan),
            divider,
            Text(text),
            divider,
            Text(
              text,
              style: const TextStyle(inherit: false, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
