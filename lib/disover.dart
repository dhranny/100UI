import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  final _currentIndex = 0;

  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Icon(Icons.arrow_back_ios, size: 20),
            ),
            Text('Back', style: TextStyle(fontFamily: 'Inter', fontSize: 17)),
          ],
         ),
         leadingWidth: MediaQuery.of(context).size.width/2,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
            size: 30),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star,
            size: 30),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,
            size: 30,),
            label: ''
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Discover', style: TextStyle(fontFamily: 'Inter', fontSize: 34, fontWeight: FontWeight.w500),
                          ),
                          Icon(Icons.account_circle, 
                            size: 40, 
                            color: Colors.black, 
                          )
                        ]
                      ),
                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(children: [
                            Transform.rotate(
                              angle: 3.14/2,
                              child: const Icon(Icons.flight, color: Color(0xFFEB5757), size: 25,)
                            ),
                            const Text('Flight', style: TextStyle(fontFamily: 'Inter', fontSize: 15, fontWeight: FontWeight.w300),)
                          ],
                          ),
                          Container(color: Colors.grey, height: 40, width: 2,),
                          const Column(children: [
                            Icon(Icons.bed, color: Color(0xFF9B51E0), size: 25,),
                            Text('Hotels', style: TextStyle(fontFamily: 'Inter', fontSize: 15, fontWeight: FontWeight.w300),)
                          ],
                          ),
                          Container(color: Colors.grey, height: 40, width: 2,),
                          const Column(children: [
                            Icon(Icons.trip_origin, color: Color(0xFF27AE60), size: 25,),
                            Text('Foods', style: TextStyle(fontFamily: 'Inter', fontSize: 15, fontWeight: FontWeight.w300),)
                          ],
                          ),
                          Container(color: Colors.grey, height: 40, width: 2,),
                          const Column(children: [
                            Icon(Icons.more_horiz,  size: 25,),
                            Text('More', style: TextStyle(fontFamily: 'Inter', fontSize: 15, fontWeight: FontWeight.w300),)
                          ],
                          ),
                        ]
                      ),
                      const Divider(),
                      const Row( 
			                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Places & Landmarks', style: TextStyle(fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.w500),),
                          Text('See All', style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w300)),
                        ]
                      ),
                    ]
                  ),
                ),
                SizedBox(height: 230,
                 child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  padding: const EdgeInsets.only(left: 20, top: 15, ),
                  itemBuilder: (context, index) {
                    return Padding(padding: const EdgeInsets.only(right: 15),
                      child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/place1.jpeg',
                            width: 340,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 340,
                          child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Wild Lake Ontario'),
                                Row( 
                                  children: [
                                    Row(
                                      children:List.generate(5, (index) {
                                        return Icon(
                                          Icons.star,
                                          color: index < 3 ? Colors.amber : Colors.grey, // Fill based on rating
                                       );
                                      }),
                                    ),
                                    const Text('1240 reviews')
                                  ]
                                )
                              ],
                            ),
                            const Icon(Icons.favorite,
                              size: 30,
                              color: Colors.red,
                            )
                          ],
                        )
                        )
                      ]
                    )
                    );
                  },
                ),
                ),

                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Column(children: [
                    Divider(),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Food & Restaurants', style: TextStyle(fontFamily: 'Inter', fontSize: 20, fontWeight: FontWeight.w500),),
                          Text('See All', style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w300)),
                        ]
                      ),
                  ],),
                ),
                SizedBox(height: 254,
                  child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('images/food.png',
                            width: 340,
                            height: 170,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Text('8 Great Recipes of the Golden Bon Moon',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 17, fontWeight: FontWeight.w300)
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.person,
                              size: 40
                            ),
                            Padding(padding: EdgeInsets.all(10),
                              child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('From other people'),
                                Text('115 people'),
                              ],
                            ),
                        )],
                        )
                      ]
                    ));
                  },
                ),
                )
              ], 
            ),
          ),
      ),
    );
  }
}


