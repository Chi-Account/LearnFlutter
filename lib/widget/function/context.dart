import 'package:flutter/material.dart';

class LearnContext extends StatelessWidget {
  const LearnContext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Context'),
      ),
      body: Column(
        children: [
          Builder(builder: (BuildContext context) {
            Scaffold? scaffold =
                context.findAncestorWidgetOfExactType<Scaffold>();
            Widget? widget;
            if (scaffold != null) {
              PreferredSizeWidget? appBar = scaffold.appBar;
              if (appBar is AppBar) {
                widget = appBar.title;
              }
            }
            if (widget == null) {
              return const Text('找不到 Scaffold');
            } else {
              return widget;
            }
          }),
        ],
      ),
    );
  }
}
