import 'package:flutter/material.dart';

class Checkout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new CheckoutState();
  }
}


class CheckoutState extends State<Checkout>{

  TextStyle subText(){
    return const TextStyle(
      fontWeight: FontWeight.w500,
      color: Color(0xFFBCBCBE),
      fontSize: 16
    );
  }

  TextStyle headText(){
    return const TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.black,
      fontSize: 18
    );
  }
  Widget second_RowWithPicture(BuildContext context){
    return const Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15, left: 20),
                child: Image(
                    image: AssetImage('images/Preview.png')
                ),
              ),
              Column(
                children: [
                  Text("Yellow Bag Edition",
                    style: TextStyle(fontFamily: 'inter', fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text("100% Synthetic Leather"),

                ],
              )
            ]
        ),
    );
  }

  Widget third_ColoumnWithSeperator(BuildContext context){
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      padding: EdgeInsets.only(left: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 20),
            child: Text("Shipping Address", style: headText()),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("234 Sorest Street Lincointon, NC 28092", style: subText()),
              Padding(
                  padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.done),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Divider(),
          ),
          Text("Delivery Method", style: headText()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2 Deliveries",style: subText()),
                    Text("From French & Italy", style: subText())
                  ]
              ),Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.done),
              )
            ],
          ),
          Text('Free Delivery', style: headText()),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Divider(),
          ),
          Text('Payment', style: headText()),
          Row(
            children: [
              Text('Select a payment method', style: subText()),

            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Divider(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Text('Discount promocode',
                style: subText()
            ),
          )

        ],
      ),

    );
  }
  Widget checkoutBody(BuildContext context){
    return Container(
        decoration: BoxDecoration(
          color: Color(0xFFFAFAFA),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Color(0xFFFFC300)
                ),
                alignment: Alignment.center,
                constraints: BoxConstraints(
                    minWidth: MediaQuery.of(context).size.width,
                    minHeight: MediaQuery.of(context).size.height / 13
                ),
                child: Text('Delivery carefully to your door\nIt is completely free',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                )
            ),
            second_RowWithPicture(context),
            third_ColoumnWithSeperator(context),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r"Subtotal: $22270.00", style: headText()),
                        Text("Total", style: headText(),)
                      ]
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r"Shipping: Free", style: headText(),),
                        const Text(r'22270.00', style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 25
                        ))
                      ]
                  ),
                  ElevatedButton(
                    onPressed: () => {
                      Navigator.pushNamed(context, 'meow')
                    },
                    child: Text(r'Place Order', style: TextStyle(
                      fontFamily: 'inter',
                      fontSize: 20,
                      color: Colors.black
                    )),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFC300),

                    ),
                  )
                ],
              )
            )
          ],
        )
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: EdgeInsets.zero,
              child: Icon(Icons.arrow_back_ios, )),
            Text('Back', style: TextStyle(fontFamily: 'Inter', fontSize: 17))
          ],
        ),
        centerTitle: true,
        leadingWidth: MediaQuery.of(context).size.width/5,
        title: Text('Checkout', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Inter'),),
    ),
      body: checkoutBody(context),
    );
  }
}

