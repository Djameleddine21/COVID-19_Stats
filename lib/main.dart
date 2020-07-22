import 'package:covid_19/datasource.dart';
import 'package:covid_19/screens/home.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(Covid19App());

class Covid19App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      data: (brightness) {
        return ThemeData(
          primaryColor: primaryBlack,
          fontFamily: 'Circular',
          brightness: brightness == Brightness.dark
              ? Brightness.dark
              : Brightness.light,
          scaffoldBackgroundColor: brightness == Brightness.dark
              ? Colors.blueGrey[900]
              : Colors.white,
          inputDecorationTheme : InputDecorationTheme(
            fillColor: Theme.of(context).brightness == Brightness.dark ? primaryBlack : Colors.white,
            hintStyle: TextStyle(color:Colors.white),
          ),
          textTheme: TextTheme(
            headline6: TextStyle(color: Colors.white),
          ),
        );
      },
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'COVID 19',
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: HomePage(),
        );
      },
    );
  }
}
