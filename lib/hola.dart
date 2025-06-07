import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Hola extends StatelessWidget {
  const Hola({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  height: 201,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Image.asset('images/holavatar-1.png')),
                      Positioned(
                          top: 134,
                          left: 142,
                          child: Image.asset('images/holavatar-2.png')),
                      Positioned(
                          top: 21,
                          left: 175,
                          child: Image.asset('images/holavatar-3.png')),
                      Positioned(
                          top: 83,
                          left: MediaQuery.of(context).size.width - 105,
                          child: Image.asset('images/holavatar-4.png')),
                    ],
                  )),
              Spacer(
                flex: 6,
              ),
              Stack(
                children: [
                  Text(
                    ' ¡Hola! Glad to see you!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'inter'),
                  ),
                  SvgPicture.asset(
                    'images/holavector.svg',
                    color: Colors.white,
                    width: 76,
                  )
                ],
              ),
              const Text(
                  'We are a fantastic group\nof people who learn languages!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'inter',
                      fontSize: 16,
                      color: Colors.white)),
              Spacer(
                flex: 4,
              ),
              ElevatedButton(
                  onPressed: () {
                    // Handle button press
                    print('Round Button 1 Pressed!');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    minimumSize: Size(80, 80), // Makes the button round
                    // Adjust padding to control size
                    backgroundColor: Colors.white, // Button color
                    foregroundColor: Colors.black, // Text/icon color
                  ),
                  child: SvgPicture.asset('images/holasymbol.svg')),
              Spacer(
                flex: 15,
              )
            ],
          ),
        ));
  }
}
