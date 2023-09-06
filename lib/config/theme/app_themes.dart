import 'package:flutter/material.dart';

ThemeData theme(){
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xffF6F6F9),
    fontFamily: 'SFProDisplay',
    appBarTheme: _appBarTheme(),
  );
}

AppBarTheme _appBarTheme(){
  return const AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 18),
  );
}