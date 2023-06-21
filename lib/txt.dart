import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Read Local Text File and Swipe to View'),
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
    readTextFile();
  }

  Future<void> readTextFile() async {
    // Get the application documents directory
    final directory = await getApplicationDocumentsDirectory();
    // Set the local file path
    final path = '${directory.path}/Book/book1.txt';
    // Read the text file
    final file = File(path);
    final content = await file.readAsString();

    setState(() {
      contentList = LineSplitter.split(content).toList();
      _isLoading = false;
    });
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

