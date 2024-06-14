import 'dart:ui';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  int _counter = 0;

  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 2),
      vsync: this)
  ..repeat(max: 1,);
  late final Animation<double> _animation = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOut);
  @override
  void initState() {
    super.initState();
    repeatOnce();
  }

  void repeatOnce() async {
    await controller.forward();
  }


  dynamic textArea() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 32, top: 188),
              child: const Text('Welcome\nto Octagon™',
                textAlign: TextAlign.left,
                style: TextStyle(fontFamily: 'Inter', fontSize: 34, fontWeight: FontWeight.w600),
              )
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(32, 16, 0, 0),
              child: const Text('Welcome to the better side of life.\nWe invite you to get to know yourself\nand understand who you are.',
                style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w400),
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 32, right: 32, top: 42),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(64),
                    textStyle: TextStyle(fontFamily: 'Inter', fontSize: 22,),
                    backgroundColor: Color(0xFF1C1C1E)
                ),
                onPressed: () => {},
                child: Text("Log In", style: TextStyle(color: Colors.white),)
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32, right: 32, top: 24),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(64),
                    backgroundColor: Color(0xFF888890)
                ),
                onPressed: () => {},
                child: Text("Sign Up", style: TextStyle(fontFamily: 'Inter', fontSize: 22, color: Color(0xFF1C1C1E)),)
            ),
          )

        ]
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Container(
            alignment: Alignment.topLeft,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/welcome_back.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: textArea(),
            )
        ),
      )

    );
  }
}
