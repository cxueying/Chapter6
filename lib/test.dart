import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //appBar: AppBar(),
        body: ScaffoldRoute(),
      ),
    );
  }
}

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar( //导航栏
            title: Text("User Name"),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car), text: 'Car'),
                Tab(icon: Icon(Icons.directions_transit), text: 'Public Transit'),
                Tab(icon: Icon(Icons.directions_bike), text: 'Bicycle'),
                Tab(icon: Icon(Icons.directions_walk), text: 'Walking'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Car Functionality')),
              Center(child: Text('Public Transit Functionality')),
              Center(child: Text('Bicycle Functionality')),
              Center(child: Text('Walking Functionality')),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar( // 底部导航
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
              BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
            ],
            currentIndex: _selectedIndex,
            fixedColor: Colors.blue,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

}


/*

class NextPageA extends StatelessWidget {
  ElevatedButton createButton(BuildContext context, String label, Widget nextPage) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () {
        if (nextPage != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => nextPage));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('全部')),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.grey[200],
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    createButton(context, '全部', NextPageA()),
                    createButton(context, '男性', NextPageB()),
                    createButton(context, '女性', NextPageC()),
                    createButton(context, '热读', NextPageD()),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        )
    );
  }
}

class NextPageB extends StatelessWidget {
  ElevatedButton createButton(BuildContext context, String label, Widget nextPage) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () {
        if (nextPage != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => nextPage));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('男性')),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.grey[200],
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    createButton(context, '全部', NextPageA()),
                    createButton(context, '男性', NextPageB()),
                    createButton(context, '女性', NextPageC()),
                    createButton(context, '热读', NextPageD()),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        )
    );
  }
}

class NextPageC extends StatelessWidget {
  ElevatedButton createButton(BuildContext context, String label, Widget nextPage) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () {
        if (nextPage != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => nextPage));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('女性')),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.grey[200],
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    createButton(context, '全部', NextPageA()),
                    createButton(context, '男性', NextPageB()),
                    createButton(context, '女性', NextPageC()),
                    createButton(context, '热读', NextPageD()),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        )
    );
  }
}

class NextPageD extends StatelessWidget {
  ElevatedButton createButton(BuildContext context, String label, Widget nextPage) {
    return ElevatedButton(
      child: Text(label),
      onPressed: () {
        if (nextPage != null) {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => nextPage));
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('热读')),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8.0),
                color: Colors.grey[200],
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    createButton(context, '全部', NextPageA()),
                    createButton(context, '男性', NextPageB()),
                    createButton(context, '女性', NextPageC()),
                    createButton(context, '热读', NextPageD()),
                  ],
                ),
              ),
              Expanded(child: Container())
            ],
          ),
        )
    );
  }
}

class NextPageE extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Page E')));
  }
}

 */