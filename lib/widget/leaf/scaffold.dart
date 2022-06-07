import 'package:flutter/material.dart';

class LearnScaffold extends StatefulWidget {
  const LearnScaffold({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LearnScaffoldState();
  }
}

class _LearnScaffoldState extends State<LearnScaffold> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu),
            );
          },
        ),
        automaticallyImplyLeading: true,
        title: const Text('Hello world!'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const MyDrawer(),
      bottomNavigationBar: createNotchedBottomNavigationBar(),
    );
  }

  Widget createNormalBottomNavigationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'User',
        ),
      ],
      onTap: (int value) {
        setState(() {
          _currentIndex = value;
        });
      },
      currentIndex: _currentIndex,
      fixedColor: Colors.blue,
    );
  }

  Widget createNotchedBottomNavigationBar() {
    return BottomAppBar(
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
          ),
          const Padding(padding: EdgeInsets.all(0)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Drawer(
      child: MediaQuery.removePadding(
        context: context,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: statusBarHeight)),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/portrait.jpg',
                      width: 80,
                      height: 80,
                    ),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        left: 20,
                      ),
                      child: Text(
                        '春江潮水连海平，海上明月共潮生',
                        style: TextStyle(color: Colors.black87, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.blue),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.blue, fontSize: 16),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text(
                      'Favorite',
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
