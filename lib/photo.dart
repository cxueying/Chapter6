import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple Images Navigation Example'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagePage1()),
              );
            },
            child: Image(
              image: AssetImage("images/p1.jpg"),
              width: 200,
              height: 200,
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagePage2()),
              );
            },
            child: Image(
              image: AssetImage("images/p2.jpg"),
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}

class ImagePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Page 1'),
      ),
      body: Center(
        child: Image(
          image: AssetImage("images/p1.jpg"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class ImagePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Page 2'),
      ),
      body: Center(
        child: Image(
          image: AssetImage("images/p2.jpg"),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
