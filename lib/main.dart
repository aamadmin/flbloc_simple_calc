import 'package:flbloc_simple_calc/screens/bloc/calculate_bloc.dart';
import 'package:flbloc_simple_calc/screens/calculate_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => CalculateBloc(),
        child: CalculatePage(),
      ),
    );
  }
}
