import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

// 우리 앱의 root widget
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Color(0xFF000000),
          title: Text("lina"),
          // titleTextStyle: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        body: Center(child: Text("hello, world")),
      ),
    );
  }
}
