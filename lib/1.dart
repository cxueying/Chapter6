import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Navigation Bar Content Switch Demo')),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    Center(child: Text('Page 1: Home')),
    Page2(),
    Center(child: Text('Page 3: Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(tabs: [
            Tab(text: 'Settings'),
            Tab(text: 'Preferences'),
            Tab(text: 'Page3'),
          ]),
          Expanded(
            child: TabBarView(children: [
              Center(child: Text('Settings Tab Content')),
              Center(child: Text('Preferences Tab Content')),
              Page3(),
            ]),
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '这是你按下+按钮的次数',
            ),
            const Text(
              '这里可以显示更多的文本',
            ),
            //添加一个按钮
            ElevatedButton(
                onPressed: (){},
                child: const Text('Bottom')
            ),
            //显示一张图片
          ],
        ),
      ),

    );
  }
}

