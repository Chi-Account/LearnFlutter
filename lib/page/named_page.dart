import 'package:flutter/material.dart';

class NamedPage extends StatelessWidget {
  const NamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String argument = ModalRoute.of(context)?.settings.arguments as String;
    print('NamedPage $argument');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            closePage(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('NamedPage'),
      ),
      body: const Center(
        child: Text('NamedPage'),
      ),
    );
  }

  closePage(BuildContext context) {
    String result = 'Result from NamedPage';
    Navigator.pop(context, result);
  }
}

class NamedPageWithInitialArgument extends StatelessWidget {
  const NamedPageWithInitialArgument({
    Key? key,
    required this.argument,
  }) : super(key: key);

  final String argument;

  @override
  Widget build(BuildContext context) {
    print('NamedPageWithInitialArgument $argument');
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            closePage(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('NamedPageWithInitialArgument'),
      ),
      body: const Center(
        child: Text('NamedPageWithInitialArgument'),
      ),
    );
  }

  closePage(BuildContext context) {
    String result = 'Result from NamedPageWithInitialArgument';
    Navigator.pop(context, result);
  }
}

class NamedPageWithoutRegister extends StatelessWidget {
  const NamedPageWithoutRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NamedPageWithoutRegister')),
      body: const Center(
        child: Text('NamedPageWithoutRegister'),
      ),
    );
  }
}
