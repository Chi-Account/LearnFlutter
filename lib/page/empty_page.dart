import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({
    Key? key,
    required this.argument,
  }) : super(key: key);

  final String argument;

  @override
  Widget build(BuildContext context) {
    print('EmptyPage $argument');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            closePage(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('EmptyPage'),
      ),
      body: const Center(
        child: Text('EmptyPage'),
      ),
    );
  }

  closePage(BuildContext context) {
    String result = 'Result from EmptyPage';
    Navigator.pop(context, result);
  }
}
