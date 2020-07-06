import 'package:flbloc_simple_calc/screens/bloc/calculate_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalculatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController _firstNumber = TextEditingController();
    TextEditingController _secondNumber = TextEditingController();
    print('widget built : Amith');
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(22.0),
        child: BlocBuilder<CalculateBloc, CalculateState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _firstNumber,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: '0'),
                  ),
                  SizedBox(height: 8.0),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _secondNumber,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: '0'),
                  ),
                  SizedBox(height: 8.0),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: _showResult(state),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          BlocProvider.of<CalculateBloc>(context).add(
                              AddNumber(_firstNumber.text, _secondNumber.text));
                        },
                        child: Text('+'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          BlocProvider.of<CalculateBloc>(context).add(
                              SubstractNumber(
                                  _firstNumber.text, _secondNumber.text));
                        },
                        child: Text('-'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                          BlocProvider.of<CalculateBloc>(context).add(
                              DivideNumber(
                                  _firstNumber.text, _secondNumber.text));
                        },
                        child: Text('/'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      RaisedButton(
                        onPressed: () {
                          BlocProvider.of<CalculateBloc>(context).add(
                              MultiplyNumber(
                                  _firstNumber.text, _secondNumber.text));
                        },
                        child: Text('*'),
                      )
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

_showResult(CalculateState state) {
  if (state is Calculated) {
    return Text(
      '${state.result}',
      style: TextStyle(fontSize: 45.0),
    );
  } else
    Text('0', style: TextStyle(fontSize: 45.0));
}
