import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeowUi extends StatefulWidget{
  const MeowUi({super.key});

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
        decoration: const BoxDecoration(
          color: Colors.black12
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white
              ),
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 8 / 9,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 100, bottom: 100),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/bg.png'),
                              fit: BoxFit.fill
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      padding: const EdgeInsets.all(5),
                      child: SvgPicture.asset('images/pawnadoption.svg',height: 45, width: 45,),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text('Meow!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Inter', fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Text('Welcome to our adoption app!\nI hope you will find what you are looking for!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontFamily: 'Inter', fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 35, bottom: 10),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintText: 'Joe Doe',

                        ),
                        keyboardType: TextInputType.name,
                        maxLines: 1,
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
                        hintText: 'joe.doe@gmail.com',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      maxLines: 1,

                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 20),
                      child: TextField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
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
                      onPressed: (){
                        Navigator.pushNamed(context, 'octagon');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrangeAccent,
                          minimumSize: const Size(double.infinity, 60)
                      ),
                      child: Text('Sign In', style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      )),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_outlined),
                          Text('Sign Up with facebook', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500),)
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / 9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Have an account?', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500)),
                    GestureDetector(onTap: (){},
                        child: const Text('Log in', style: TextStyle(fontFamily: 'Inter', fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent))
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