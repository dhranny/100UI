import 'package:flutter/material.dart';

class Strawhat extends StatelessWidget {
  const Strawhat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                'images/lightblack.jfif',
              ),
              fit: BoxFit.cover,
            )),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      margin: EdgeInsets.fromLTRB(30, 40, 0, 30),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0x60888888),
                      ),
                      child: const Icon(
                        Icons.close,
                        size: 35,
                        color: Colors.white,
                        weight: 100,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                      height: 500,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'images/download.jfif',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(55.0),
                      ),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "CAPTAIN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontFamily: 'mona',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text("100HP",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'mona',
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 19,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ))),
                ),
                Container(
                  height: 15,
                ),
                Text(
                  'Monkey D Luffy',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'mona',
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'The one who will conquer the seas',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'mona',
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                )
              ],
            ))); // Placeholder
  }
}
