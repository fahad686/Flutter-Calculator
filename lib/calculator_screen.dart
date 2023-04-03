import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/custom_button.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});
  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(children: [
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          result.toString(),
                          style: const TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomButton(
                            title: 'AC',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput = '';
                              result = '';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '+/-',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '+/-';
                              setState(() {});
                            }),
                        CustomButton(
                            title: 'DEL',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                              setState(() {});
                            }),
                        CustomButton(
                            title: '/',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '/';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            title: '7',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '7';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '8',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '8';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '9',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '9';
                              setState(() {});
                            }),
                        CustomButton(
                            title: 'x',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += 'x';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            title: '4',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '4';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '5',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '5';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '6',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '6';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '-',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '-';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            title: '1',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '1';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '2',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '2';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '3',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '3';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '+',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '+';
                              setState(() {});
                            }),
                      ],
                    ),
                    Row(
                      children: [
                        CustomButton(
                            title: '.',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '.';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '0',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '0';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '%',
                            color: Colors.yellowAccent,
                            onpress: () {
                              userInput += '%';
                              setState(() {});
                            }),
                        CustomButton(
                            title: '=',
                            color: Colors.yellowAccent,
                            onpress: () {
                              equalPress();
                              setState(() {});
                            }),
                      ],
                    ),
                  ],
                )),
          ]),
        ),
      ),
    );
  }

//equal function
  void equalPress() {
    String finalizeInput = userInput.replaceAll('x', '*');
    Parser parser = Parser();
    Expression expression = parser.parse(finalizeInput);
    ContextModel contextModel = ContextModel();
    dynamic evalute = expression.evaluate(EvaluationType.REAL, contextModel);
    result = evalute.toString();
  }
}
