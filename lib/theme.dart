import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

ThemeData myTheme() {
  return ThemeData(
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color(0xff66697C),
      ),
      colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: Colors.white,
          secondary: Color(0xffff6766),
          background: Color(0xFFcfd0d6),
          secondaryVariant: Color(0xffD7DFEA),
          onSecondary: Color(0xffF8F7FF),
          surface: Colors.grey,
          error: Color(0xffA55959),
          onSurface: Color(0xffF7F7FD),
          onPrimary: Color(0xff42455c)),
      textTheme: TextTheme(
        subtitle1: TextStyle(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        subtitle2: TextStyle(
            color: Color(0xff4d5169),
            fontSize: 16,
            fontWeight: FontWeight.bold),
        bodyText1: TextStyle(color: Colors.white, fontSize: 15),
        bodyText2: TextStyle(
            color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
        headline6: TextStyle(
            color: Colors.black, fontSize: 19, fontWeight: FontWeight.normal),
        headline5: TextStyle(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        headline4: TextStyle(
            color: Colors.black,
            fontSize: 15,
            height: 1.2,
            fontWeight: FontWeight.bold),
        headline1: TextStyle(
          color: Colors.white,
          fontSize: 13,
        ),
        headline3: TextStyle(
            color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w400),
        headline2: TextStyle(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.normal),
      ));
}
