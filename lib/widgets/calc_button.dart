import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/calculator_bloc.dart';
import '../bloc/calculator_event.dart';

class CalcButton extends StatelessWidget {

  final String text;

  const CalcButton(this.text);

  @override
  Widget build(BuildContext context) {
    final calculatorBloc = BlocProvider.of<CalculatorBloc>(context);
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              width: 0.5,
            ),
          ),
          child: FlatButton(
            onPressed: () => {
              if (text == 'AC') {
                calculatorBloc.add(ResetAC())
              } else if (text == 'DEL') {
                calculatorBloc.add(Delete())
              } else {
                calculatorBloc.add(AddNumber(text))
              }
            },
            child: Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            padding: EdgeInsets.all(30),
            highlightColor: Colors.blueGrey[100],
          ),
        )
    );
  }
}