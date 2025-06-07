import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Center(child: Text('Profile')),
        leadingWidth: 79,
        leading: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          //IconButton(
          // icon:
          const Icon(
            Icons.chevron_left,
            size: 40,
          ),
          //     tooltip: 'Back',
          //   padding: EdgeInsets.all(0),
          // onPressed: () {},
          //   ),
          Text(
            'Back',
            style: TextStyle(color: Colors.black, fontSize: 20),
          )
        ]),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))],
      ),
      body: const Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
