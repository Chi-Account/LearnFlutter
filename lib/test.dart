import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('English Words'),
      ),
      body: CounterWidget(),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    MaterialButton widget = MaterialButton(onPressed: () {});
    print(widget.toString());
    debugPrint(widget.toString());
    return Center(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: Text(
          'Hello world!',
        ),
      ),
    );
  }

  void test() {
    String tag = 'LearnFlutter';
    runZoned(
      () {},
      zoneSpecification: ZoneSpecification(print: (
        Zone self,
        ZoneDelegate parent,
        Zone zone,
        String line,
      ) {
        parent.print(zone, '$tag: $line');
      }),
    );
  }
}
