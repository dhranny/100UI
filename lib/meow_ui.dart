import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeowUi extends StatefulWidget{
  @override
  State<MeowUi> createState() {
    return MeowUiState();
  }


}

class MeowUiState extends State<MeowUi>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/bg.png'),
                    fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: SvgPicture.asset('images/pawnadoption.svg',),
              ),
              const Text('Meow!',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Inter', fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text('Welcome to our adoption app!\nI hope you will find what you are looking for',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Inter', fontSize: 16),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Joe Doe',
                ),
                keyboardType: TextInputType.name,
                maxLines: 1,

              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'joe.doe@gmail.com',
                ),
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,

              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '***********',
                  suffixIcon: Icon(Icons.visibility, color: Theme.of(context).primaryColor,)
                ),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                maxLines: 1,
              ),
              ElevatedButton(
                onPressed: (){},
                child: Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
              ),
              Row(
                children: [
                  Icon(Icons.facebook_outlined)
                ]
              )
            ],
          ),
          Row(

          )
        ],
      ),
    );
  }

}