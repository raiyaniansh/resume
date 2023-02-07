import 'package:flutter/material.dart';
import 'package:resume/resume1.dart';
import 'package:resume/resume2.dart';
import 'package:resume/resume3.dart';
import 'package:resume/resume4.dart';
import 'package:resume/resume5.dart';
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
        'R2':(context) => Resume2(),
        'R3':(context) => Resume3(),
        'R4':(context) => Resume4(),
        'R5':(context) => Resume5(),
      },
    ),
  );
}
