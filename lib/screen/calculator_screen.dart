import 'package:flutter/material.dart';
import 'package:my_flutter_app/widgets/calc_button.dart';
import 'package:my_flutter_app/widgets/results_labels.dart';

class CalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              ResultsLabels(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalcButton('AC'),
                  CalcButton('+/-'),
                  CalcButton('DEL')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalcButton('7'),
                  CalcButton('8'),
                  CalcButton('9'),
                  CalcButton('X')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalcButton('4'),
                  CalcButton('5'),
                  CalcButton('6'),
                  CalcButton('-')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalcButton('1'),
                  CalcButton('2'),
                  CalcButton('3'),
                  CalcButton('+')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalcButton('0'),
                  CalcButton('.'),
                  CalcButton('='),
                  CalcButton('%')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}