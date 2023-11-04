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
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black12
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 100),
                child: Column(
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
                      padding: EdgeInsets.all(5),
                      child: SvgPicture.asset('images/pawnadoption.svg',height: 60, width: 60,),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: const Text('Meow!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Inter', fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: Text('Welcome to our adoption app!\nI hope you will find what you are looking for!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintText: 'Joe Doe',
                        ),
                        keyboardType: TextInputType.name,
                        maxLines: 1,

                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        hintText: 'joe.doe@gmail.com',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,

                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                            hintText: '***********',
                            suffixIcon: Icon(Icons.visibility, color: Theme.of(context).primaryColor,)
                        ),
                        obscureText: true,
                        enableSuggestions: false,
                        autocorrect: false,
                        maxLines: 1,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: (){},
                      child: Text('Sign In'),

                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          minimumSize: Size(double.infinity, 60)
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_outlined),
                          Text('Sign Up with facebook', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500),)
                        ]
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have an account?', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500)),
                    GestureDetector(onTap: (){},
                        child: Text('Log in', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.red))
                    )
                  ],
                )
            )
          ],
        ),
      )
    );
  }

}