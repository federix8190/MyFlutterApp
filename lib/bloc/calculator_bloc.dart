import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator_state.dart';
import 'calculator_event.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {

  CalculatorBloc() : super(CalculatorState()) {
    on<ResetAC>((event, emit) => reset(emit));
    on<Delete>((event, emit) => delete(emit));
    on<AddNumber>((event, emit) => addNumber(event, emit));
  }

  FutureOr<void> reset(Emitter<CalculatorState> emit,) async {
    try {
      emit(CalculatorState(firstNumber: "0", secondNumber: "0", operation: "none", mathResult: "0"));
    } catch (e) {
      print("Ocurrio un error !! ${e.toString()}");
    }
  }

  FutureOr<void> delete(Emitter<CalculatorState> emit,) async {
    try {
      var str = state.firstNumber.substring(0, state.firstNumber.length - 1);
      emit(CalculatorState(firstNumber: str)
      );
    } catch (e) {
      print("Ocurrio un error !! ${e.toString()}");
    }
  }

  FutureOr<void> addNumber(AddNumber event, Emitter<CalculatorState> emit,) async {
    try {
      emit(CalculatorState(
          firstNumber: state.firstNumber + event.number,
          secondNumber: "0",
          operation: "none",
          mathResult: "0"));
    } catch (e) {
      print("Ocurrio un error !! ${e.toString()}");
    }
  }
}