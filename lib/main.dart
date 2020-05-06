import 'package:flutter/material.dart';
import 'price_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway',
        primaryColor: Color(0xFF141414),
        scaffoldBackgroundColor: Color(0xFFDCDCDC),

      ),
      home: PriceScreen(),
    );
  }
}
