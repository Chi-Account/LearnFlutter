import 'package:flutter/material.dart';
import 'package:learn_flutter/test.dart';
import 'package:learn_flutter/widget/scrollable/list_view.dart';
import 'package:learn_flutter/widget/scrollable/single_child_scroll_view.dart';

class Entrance extends StatelessWidget {
  const Entrance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    // return const Test();
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoadMore'),
      ),
      body: const LearnListViewLoadMore(),
    );
  }
}
