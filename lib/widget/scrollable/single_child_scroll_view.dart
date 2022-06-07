import 'package:flutter/material.dart';

class LearnSingleChildScrollView extends StatelessWidget {
  const LearnSingleChildScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      reverse: false,
      padding: const EdgeInsets.all(10),
      primary: true,
      child: Column(
        children: [
          createItem(Colors.red),
          createItem(Colors.orange),
          createItem(Colors.yellow),
          createItem(Colors.green),
          createItem(Colors.cyan),
          createItem(Colors.blue),
          createItem(Colors.purple),
        ],
      ),
    );
  }

  Widget createItem(Color color) {
    return Container(
      color: color,
      width: double.infinity,
      height: 200,
    );
  }
}
