import 'package:flutter/material.dart';

class PartiallyColoredBar extends StatelessWidget {
  final double percentage; // Percentage of the bar to be colored
  final double height; // Height of the bar
  final double width; // Total width of the bar
  final Color filledColor; // Color of the filled section
  final Color unfilledColor; // Color of the unfilled section

  const PartiallyColoredBar({
    Key? key,
    required this.percentage,
    this.height = 10.0,
    this.width = 200.0,
    this.filledColor = Colors.blue,
    this.unfilledColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          // Unfilled section
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: unfilledColor,
              borderRadius: BorderRadius.circular(height / 2),
            ),
          ),
          // Filled section
          Container(
            width: width * (percentage / 100),
            height: height,
            decoration: BoxDecoration(
              color: filledColor,
              borderRadius: BorderRadius.circular(height / 2),
            ),
          ),
        ],
      ),
    );
  }
}

class Game extends StatelessWidget {
  const Game({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10),
          child:  const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                  ]
                )
              ]
            )
        )
      )
    );
  }
}