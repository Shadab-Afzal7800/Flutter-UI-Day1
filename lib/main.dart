import 'package:flutter/material.dart';
import 'package:flutter_ui_day1/home.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Roboto'),
  ));
}
