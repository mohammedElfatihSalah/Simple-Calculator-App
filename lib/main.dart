import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalcPage(),
    );
  }
}

class CalcPage extends StatefulWidget {
  @override
  _CalcPageState createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  double ICON_SIZE = 25;
  Color COLOR_DARK = Colors.grey.shade300;
  Color COLOR_LIGHT = Colors.grey.shade200;
  Color TEXT_COLOR_OPERATION = Colors.blue[900];
  Color TEXT_COLOR_NUMBER = Colors.black;
  String mathExpression = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      mathExpression,
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression = '';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: COLOR_DARK,
                        border: Border.all(
                          color: Colors.grey.shade400
                        )
                      ),
                      child: Center(
                        child: Text('C',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                            color: TEXT_COLOR_OPERATION,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '/';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_DARK,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: FaIcon(FontAwesomeIcons.divide,color: TEXT_COLOR_OPERATION,)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += 'x';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_DARK,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: FaIcon(FontAwesomeIcons.times, color: TEXT_COLOR_OPERATION,)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        if (mathExpression.isEmpty) return;
                        mathExpression = mathExpression.substring(0, mathExpression.length -1);
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_DARK,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.backspace,
                          color: TEXT_COLOR_OPERATION,
                        )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '1';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_LIGHT,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: Text('1',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                              color: TEXT_COLOR_NUMBER,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '2';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_LIGHT,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: Text('2',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                              color: TEXT_COLOR_NUMBER,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '3';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_LIGHT,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: Text('3',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                              color: TEXT_COLOR_NUMBER,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '-';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_DARK,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.minus,
                            color: TEXT_COLOR_OPERATION,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '4';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_LIGHT,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: Text('4',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                              color: TEXT_COLOR_NUMBER,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '5';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_LIGHT,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: Text('5',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                              color: TEXT_COLOR_NUMBER,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '6';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_LIGHT,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                        child: Text('6',
                          style: TextStyle(
                              fontSize: ICON_SIZE,
                              color: TEXT_COLOR_NUMBER,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        mathExpression += '+';
                      });
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: COLOR_DARK,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.plus,
                            color: TEXT_COLOR_OPERATION,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  mathExpression += '7';
                                });
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: COLOR_LIGHT,
                                    border: Border.all(
                                        color: Colors.grey.shade400
                                    )
                                ),
                                child: Center(
                                  child: Text('7',
                                    style: TextStyle(
                                        fontSize: ICON_SIZE,
                                        color: TEXT_COLOR_NUMBER,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  mathExpression += '8';
                                });
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: COLOR_LIGHT,
                                    border: Border.all(
                                        color: Colors.grey.shade400
                                    )
                                ),
                                child: Center(
                                  child: Text('8',
                                    style: TextStyle(
                                        fontSize: ICON_SIZE,
                                        color: TEXT_COLOR_NUMBER,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  mathExpression += '9';
                                });
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: COLOR_LIGHT,
                                    border: Border.all(
                                        color: Colors.grey.shade400
                                    )
                                ),
                                child: Center(
                                  child: Text('9',
                                    style: TextStyle(
                                        fontSize: ICON_SIZE,
                                        color: TEXT_COLOR_NUMBER,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  mathExpression += '(';
                                });
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: COLOR_LIGHT,
                                    border: Border.all(
                                        color: Colors.grey.shade400
                                    )
                                ),
                                child: Center(
                                  child: Text('(',
                                    style: TextStyle(
                                        fontSize: ICON_SIZE,
                                        color: TEXT_COLOR_NUMBER,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  mathExpression += '0';
                                });
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: COLOR_LIGHT,
                                    border: Border.all(
                                        color: Colors.grey.shade400
                                    )
                                ),
                                child: Center(
                                  child: Text('0',
                                    style: TextStyle(
                                        fontSize: ICON_SIZE,
                                        color: TEXT_COLOR_NUMBER,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: (){
                                setState(() {
                                  mathExpression += ')';
                                });
                              },
                              child: Container(
                                height: 100,
                                decoration: BoxDecoration(
                                    color: COLOR_LIGHT,
                                    border: Border.all(
                                        color: Colors.grey.shade400
                                    )
                                ),
                                child: Center(
                                  child: Text(')',
                                    style: TextStyle(
                                        fontSize: ICON_SIZE,
                                        color: TEXT_COLOR_NUMBER,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        var r = mathExpression.replaceAll("x", '*');
                        Parser p = Parser();
                        Expression exp = p.parse(r);
                        double result = exp.evaluate(EvaluationType.REAL, null);
                        mathExpression = result.toString();
                      });
                    },
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                              color: Colors.grey.shade400
                          )
                      ),
                      child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.equals,
                            color: Colors.white,
                          )
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}








