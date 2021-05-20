import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
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
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
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
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              SizedBox(width: 5),
              Container(
                height: 20,
                width: 20,
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
