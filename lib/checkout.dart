import 'package:flutter/material.dart';

class Checkout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new CheckoutState();
  }
}

class CheckoutState extends State<Checkout>{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        leading: Row(
          children: [
            Icon(Icons.arrow_back_ios, ),
            Text('Back', style: TextStyle(fontFamily: 'Inter', fontSize: 17))
          ],
        ),
        centerTitle: true,
        leadingWidth: MediaQuery.of(context).size.width/5,
        title: Text('Checkout', textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Inter'),),
    ),

      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFBCBCBE),
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
                minHeight: 64
              ),
                child: Text('Delivery carefully to your door\nIt is completely free',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                )
            ),
            
          ],
        )
      ),
    );
  }
}