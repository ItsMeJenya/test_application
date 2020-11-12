import 'package:flutter/material.dart';
import 'color_generation.dart';

void main() {
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
          home: Home()
      )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => bgColor = ColorGeneration.random()),
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text('test application'),
          centerTitle: true,
          backgroundColor: Colors.amber[800],
        ),
        body: Center(
          child: Text('Hi there',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Colors.black,
              )
          ),
        ),
      ),
    );
  }
}

