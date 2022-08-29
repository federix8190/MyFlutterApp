import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flutter_app/bloc/calculator_bloc.dart';
import 'package:my_flutter_app/bloc/calculator_state.dart';

class ResultsLabels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
        builder: (context, state) {
          return Column(
            children: [
              Text(state.firstNumber),
              Text(state.secondNumber),
              Text(state.operation),
              Text(state.mathResult),
            ],
          );
        }
    );
  }
}