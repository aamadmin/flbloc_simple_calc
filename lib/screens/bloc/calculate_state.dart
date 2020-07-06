part of 'calculate_bloc.dart';

//@immutable
abstract class CalculateState extends Equatable {
  @override
  List<Object> get props => [];
}

class CalculateInitial extends CalculateState {
  final double result;
  CalculateInitial(this.result);
  @override
  List<Object> get props => [result];
}

class Calculated extends CalculateState {
  final double result;
  Calculated(this.result);

  @override
  List<Object> get props => [result];
}

class CalculatorError extends CalculateState {
  final String message;
  CalculatorError(this.message);

  @override
  List<Object> get props => [message];
}
