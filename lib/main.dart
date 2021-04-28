import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 120,
                width: 120,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
