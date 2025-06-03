//import 'dart:ui';
//import 'package:first_flutter/checkout.dart';
import 'package:first_flutter/meow_ui.dart';
import 'package:first_flutter/disover.dart';
import 'package:first_flutter/strawhat.dart';
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
      routes: {
        'octagon': (context) => const DiscoverScreen(),
        'meow': (context) => MeowUi()
      },

      home: Strawhat(),
    );
  }
}
