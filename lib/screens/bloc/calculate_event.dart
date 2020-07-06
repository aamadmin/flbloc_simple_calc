part of 'calculate_bloc.dart';

@immutable
abstract class CalculateEvent {}

class AddNumber extends CalculateEvent {
  final String firstNumber;
  final String secondNumber;
  AddNumber(this.firstNumber, this.secondNumber);

//   @override
//   List<Object> get props => [firstNumber, secondNumber];
}

class SubstractNumber extends CalculateEvent {
  final String firstNumber;
  final String secondNumber;
  SubstractNumber(this.firstNumber, this.secondNumber);

  // @override
  // List<Object> get props => [firstNumber, secondNumber];
}

class DivideNumber extends CalculateEvent {
  final String firstNumber;
  final String secondNumber;
  DivideNumber(this.firstNumber, this.secondNumber);

  // @override
  // List<Object> get props => [firstNumber, secondNumber];
}

class MultiplyNumber extends CalculateEvent {
  final String firstNumber;
  final String secondNumber;
  MultiplyNumber(this.firstNumber, this.secondNumber);

  // @override
  // List<Object> get props => [firstNumber, secondNumber];
}
