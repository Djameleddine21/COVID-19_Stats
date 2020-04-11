import 'package:covid_19/datasource.dart';
import 'package:covid_19/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(Covid19App());

class Covid19App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID 19',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Circular',
        primaryColor: primaryBlack,
      ),
      home: HomePage(),
    );
  }
}