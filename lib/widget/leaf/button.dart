import 'package:flutter/material.dart';

class LearnButton extends StatelessWidget {
  const LearnButton({Key? key}) : super(key: key);

  final Icon icon = const Icon(
    Icons.thumb_up,
    color: Colors.blue,
  );

  onPressed() {}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            child: const Text("ElevatedButton"),
          ),
          ElevatedButton.icon(
            onPressed: onPressed,
            icon: const Icon(
              Icons.thumb_up,
              color: Colors.white,
            ),
            label: const Text("ElevatedButton with icon"),
          ),
          IconButton(
            onPressed: onPressed,
            icon: icon,
          ),
          OutlinedButton(
            onPressed: onPressed,
            child: const Text('OutlinedButton'),
          ),
          OutlinedButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: const Text('OutlinedButton with icon'),
          ),
          RawMaterialButton(
            onPressed: onPressed,
            child: const Text('RawMaterialButton'),
          ),
          TextButton(
            onPressed: onPressed,
            child: const Text('TextButton'),
          ),
          TextButton.icon(
            onPressed: onPressed,
            icon: icon,
            label: const Text('TextButton with icon'),
          ),
        ],
      ),
    );
  }
}
