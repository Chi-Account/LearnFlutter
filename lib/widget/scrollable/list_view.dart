import 'package:flutter/material.dart';

class LearnListView extends StatelessWidget {
  const LearnListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return separated();
  }

  Widget createItem(Color color) {
    return Container(
      color: color,
      width: double.infinity,
      height: 200,
    );
  }

  Widget listView() {
    return ListView(
      children: [
        createItem(Colors.red),
        createItem(Colors.orange),
        createItem(Colors.yellow),
        createItem(Colors.green),
        createItem(Colors.cyan),
        createItem(Colors.blue),
        createItem(Colors.purple),
      ],
    );
  }

  Widget builder() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return createItem(Colors.blue[(index % 9 + 1) * 100]!);
      },
      itemCount: 100,
    );
  }

  Widget separated() {
    Widget separator = const Divider();
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return createItem(Colors.blue[(index % 9 + 1) * 100]!);
      },
      separatorBuilder: (BuildContext context, int index) {
        return separator;
      },
      itemCount: 100,
    );
  }
}

class LearnListViewLoadMore extends StatefulWidget {
  const LearnListViewLoadMore({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnListViewLoadMoreState();
  }
}

class _LearnListViewLoadMoreState extends State<LearnListViewLoadMore> {
  final int _pageSize = 10;
  final List<String> _stringList = [];

  Widget _generateItem(String text) {
    return Container(
      alignment: AlignmentDirectional.center,
      width: double.infinity,
      height: 50,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }

  void _getData() {
    Future.delayed(const Duration(seconds: 1)).then((value) {
      setState(() {
        _stringList.insertAll(
          _stringList.length,
          List.generate(_pageSize, (index) {
            return (_stringList.length + index).toString();
          }),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        if (index == _stringList.length) {
          if (_stringList.length < 100) {
            _getData();
            return _generateItem('正在加载');
          } else {
            return _generateItem('暂无更多数据');
          }
        } else {
          return _generateItem(_stringList[index]);
        }
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(color: Colors.blue);
      },
      itemCount: _stringList.length + 1,
    );
  }
}
