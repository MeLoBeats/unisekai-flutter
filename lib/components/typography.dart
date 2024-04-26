import 'package:flutter/material.dart';

class Typography {
  static const color = Colors.white;

  static const TextStyle display4 = TextStyle(
    // h1 -> display4
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 112.0,
    fontWeight: FontWeight.w100,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle display3 = TextStyle(
    // h2 -> display3
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 56.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle display2 = TextStyle(
    // h3 -> display2
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 45.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 34.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle headline = TextStyle(
    // h5 -> headline
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 32.0,
    fontWeight: FontWeight.w600,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle title = TextStyle(
    // h6 -> title
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 40.0,
    fontWeight: FontWeight.w900,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle subhead = TextStyle(
    // subtitle1 -> subhead
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
  static const TextStyle caption = TextStyle(
    // Caption -> caption
    color: color,
    fontFamily: 'Roboto',
    inherit: true,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    textBaseline: TextBaseline.alphabetic,
  );
}
