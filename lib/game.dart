import 'package:flutter/material.dart';

class RoundedRectPainter extends CustomPainter {
  final double radius;

  RoundedRectPainter({this.radius = 10.0}); // Default radius

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;

    final Rect rect = Rect.fromLTWH(
      0,
      0,
      size.width,
      size.height,
    );

    final RRect rRect = RRect.fromRectAndRadius(
      rect,
      Radius.circular(radius), // Apply the circular radius to all corners
    );

    // Draw the rounded rectangle
    canvas.drawRRect(rRect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // Repaint if the radius changes
    return (oldDelegate as RoundedRectPainter).radius != radius;
  }
}

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
  Widget colouredText({required String text, Color color = Colors.grey}) {
    return Padding(
        padding: EdgeInsets.only(right: 25),
        child: Text(text,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'inter',
                fontWeight: FontWeight.w200,
                color: Colors.black,
                background: Paint()
                  ..color = color
                  ..strokeJoin = StrokeJoin.round
                  ..strokeCap = StrokeCap.round
                  ..strokeWidth = 20
                  ..style = PaintingStyle.stroke)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Grammer',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'inter',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                background: Paint()
                                  ..color = Colors.grey
                                  ..strokeJoin = StrokeJoin.round
                                  ..strokeCap = StrokeCap.round
                                  ..strokeWidth = 20
                                  ..style = PaintingStyle.stroke)),
                        Icon(
                          Icons.cancel,
                          color: Colors.white,
                        )
                      ]),
                  const Spacer(
                    flex: 1,
                  ),
                  PartiallyColoredBar(
                    percentage: 30,
                    height: 5,
                    width: MediaQuery.of(context).size.width - 40,
                    filledColor: Colors.grey,
                    unfilledColor: Colors.white,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Translate Sentence',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'inter',
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('¿Quieres ir al cine?',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'inter',
                              fontSize: 17,
                              fontWeight: FontWeight.w500)),
                      Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const Spacer(flex: 1),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                  Row(
                    children: [
                      colouredText(text: 'Do', color: Colors.white),
                      colouredText(text: 'you', color: Colors.white),
                      colouredText(text: 'wants', color: Color(0xFFF99CDC)),
                      colouredText(text: 'to go', color: Colors.white),
                    ],
                  ),
                  const Spacer(flex: 1),
                  Container(
                    height: 1,
                    color: Colors.grey,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    children: [
                      colouredText(text: 'to the', color: Colors.white),
                      colouredText(text: 'movies', color: Colors.white),
                    ],
                  ),
                  const Spacer(flex: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      colouredText(text: 'want', color: Colors.yellow),
                      Container(
                        width: 50,
                      ),
                      colouredText(text: 'Did', color: Colors.white),
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      colouredText(text: 'visit', color: Colors.white),
                    ],
                  ),
                  const Spacer(
                    flex: 4,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('🛈 «s» in the end',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          'It is those feelings that drive\nour love of astronomy.',
                          style: TextStyle(
                            color: Colors.white,
                          )),
                      Icon(
                        Icons.ios_share_outlined,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                      )
                    ],
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF99CDC),
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: Text('Next',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'inter',
                            fontSize: 21)),
                  ),
                  const Spacer(
                    flex: 2,
                  )
                ])));
  }
}
