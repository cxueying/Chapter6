import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Read Text File and Swipe to View'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<String> contentList = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchTextFile();
  }

  Future<void> fetchTextFile() async {
    final response = await http.get(Uri.parse('https://example.com/path/to/your/textfile.txt'));

    if (response.statusCode == 200) {
      setState(() {
        contentList = LineSplitter.split(response.body).toList();
        _isLoading = false;
      });
    } else {
      throw Exception('Failed to load text file');
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return PageView.builder(
      itemCount: contentList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            contentList[index],
            style: TextStyle(fontSize: 24),
          ),
        );
      },
    );
  }
}
