import 'package:flutter/material.dart';
import 'package:learn_flutter/page/empty_page.dart';

class PageTurner extends StatelessWidget {
  const PageTurner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch page'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                openPage(context);
              },
              child: const Text('Open page'),
            ),
            ElevatedButton(
              onPressed: () {
                openPageByName(context);
              },
              child: const Text('Open page by name'),
            ),
            ElevatedButton(
              onPressed: () {
                openPageByNameWithInitialArgument(context);
              },
              child: const Text('Open page by name with initial argument'),
            ),
            ElevatedButton(
              onPressed: () {
                openPageByNameWithoutRegister(context);
              },
              child: const Text('Open page by name without register'),
            ),
          ],
        ),
      ),
    );
  }

  openPage(BuildContext context) {
    Future<String?> future = Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return const EmptyPage(argument: 'Hello EmptyPage');
      }),
    );
    future.then((value) {
      print('PageTurner $value');
    });
  }

  openPageByName(BuildContext context) {
    Future future = Navigator.pushNamed(
      context,
      'NamedPage',
      arguments: 'Hello NamedPage',
    );
    future.then((value) {
      String result = value as String;
      print('PageTurner $result');
    });
  }

  openPageByNameWithInitialArgument(BuildContext context) {
    Future future = Navigator.pushNamed(
      context,
      'NamedPageWithInitialArgument',
      arguments: 'Hello NamedPageWithInitialArgument',
    );
    future.then((value) {
      String result = value as String;
      print('PageTurner $result');
    });
  }

  openPageByNameWithoutRegister(BuildContext context) {
    Navigator.pushNamed(context, 'NamedPageWithoutRegister');
  }
}
