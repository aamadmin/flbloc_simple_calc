import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'calculate_event.dart';
part 'calculate_state.dart';

class CalculateBloc extends Bloc<CalculateEvent, CalculateState> {
  CalculateBloc() : super(CalculateInitial(0));

  @override
  Stream<CalculateState> mapEventToState(
    CalculateEvent event,
  ) async* {
    try {
      if (event is AddNumber) {
        double num1 = double.parse(event.firstNumber);
        double num2 = double.parse(event.secondNumber);
        double result = num1 + num2;
        yield Calculated(result);
      } else if (event is SubstractNumber) {
        double num1 = double.parse(event.firstNumber);
        double num2 = double.parse(event.secondNumber);
        double result = num1 - num2;
        yield Calculated(result);
      } else if (event is DivideNumber) {
        double num1 = double.parse(event.firstNumber);
        double num2 = double.parse(event.secondNumber);
        double result = num1 / num2;
        yield Calculated(result);
      } else if (event is MultiplyNumber) {
        double num1 = double.parse(event.firstNumber);
        double num2 = double.parse(event.secondNumber);
        double result = num1 * num2;
        yield Calculated(result);
      }
    } on FormatException {
      yield CalculatorError('Error');
    } catch (e) {
      yield CalculatorError(e.toString());
    }
  }
}
