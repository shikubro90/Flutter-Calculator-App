import 'package:calculatorapp/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInut = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(userInut.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(answer.toString(),
                      style: TextStyle(fontSize: 30, color: Colors.white))
                ],
              )),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        MyButton(
                          title: 'AC',
                          onPress: () {
                            userInut = '';
                            answer = '';
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+/-',
                          onPress: () {
                            userInut += "+/-";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '%',
                          onPress: () {
                            userInut += "%";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '/',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInut += "/";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '7',
                          onPress: () {
                            userInut += "7";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '8',
                          onPress: () {
                            userInut += "8";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '9',
                          onPress: () {
                            userInut += "9";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'x',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInut += "x";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '4',
                          onPress: () {
                            userInut += "4";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '5',
                          onPress: () {
                            userInut += "5";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '6',
                          onPress: () {
                            userInut += "6";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '-',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInut += "-";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '1',
                          onPress: () {
                            userInut += "1";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '2',
                          onPress: () {
                            userInut += "2";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '3',
                          onPress: () {
                            userInut += "3";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '+',
                          color: Color(0xffffa00a),
                          onPress: () {
                            userInut += "+";
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        MyButton(
                          title: '0',
                          onPress: () {
                            userInut += "0";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '.',
                          onPress: () {
                            userInut += ".";
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: 'DEL',
                          onPress: () {
                            userInut =
                                userInut.substring(0, userInut.length - 1);
                            setState(() {});
                          },
                        ),
                        MyButton(
                          title: '=',
                          color: Color(0xffffa00a),
                          onPress: () {
                            equalPress();
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void equalPress() {
    String finaluserInput = userInut.replaceAll('x', '*');

    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
