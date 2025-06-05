//import 'dart:ui';
//import 'package:first_flutter/checkout.dart';
import 'package:_100ui/meow_ui.dart';
import 'package:_100ui/octagon_ui.dart';
import 'package:_100ui/checkout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      routes: {'meow': (context) => MeowUi()},
      home: Checkout(),
    );
  }
}
