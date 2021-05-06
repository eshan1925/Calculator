import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:calculator/Widgets/CalcButton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _expression = '';
  String _history = '';
  void numClick(String text) {
    setState(() {
      _expression += text;
    });
  }

  void allClear(String text) {
    setState(() {
      _expression = '';
      _history = '';
    });
  }

  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(_expression);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      _history = _expression;
      _expression = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Color(0xFF283637),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 12),
              child: Text(
                _history,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 30, color: Color(0xFF545F61)),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            Container(
              child: Text(
                _expression,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
              alignment: Alignment(1, 1),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: 'AC',
                  callBack: allClear,
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: 'C',
                  callBack: clear,
                  fillColor: 0xFF6C807F,
                ),
                CalcButton(
                  text: '%',
                  callBack: numClick,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                CalcButton(
                  text: '/',
                  callBack: numClick,
                  textSize: 25,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '7',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '8',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '9',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '*',
                  callBack: numClick,
                  textSize: 34,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '4',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '5',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '6',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '-',
                  callBack: numClick,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 34,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '1',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '2',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '3',
                  callBack: numClick,
                  textColor: 0xFFFFFFFF,
                ),
                CalcButton(
                  text: '+',
                  callBack: numClick,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 34,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CalcButton(
                  text: '.',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '0',
                  callBack: numClick,
                ),
                CalcButton(
                  text: '00',
                  callBack: numClick,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                ),
                CalcButton(
                  text: '=',
                  callBack: evaluate,
                  fillColor: 0xFFFFFFFF,
                  textColor: 0xFF65BDAC,
                  textSize: 34,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
