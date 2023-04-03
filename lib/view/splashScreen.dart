import 'package:flutter/material.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Image.network("https://tse4.mm.bing.net/th?id=OIP.zyJfIBUdrw80HVhz23Iw9gHaDW&pid=Api&P=0"),
          SizedBox(height: 10,),
          Text('Unsad App',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),)
        ],

      )),
    );
  }
}

