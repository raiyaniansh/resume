import 'package:flutter/material.dart';
import 'package:resume/resume1.dart';
import 'package:resume/second.dart';
import 'package:resume/splash.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => Splash(),
        '2':(context) => Second(),
        'R1':(context) => Resume1(),
      },
    ),
  );
}
