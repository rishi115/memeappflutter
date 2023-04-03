import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text("meme #21"),
          Text("Target 500 memes"),
          Image.network("src"),
          ElevatedButton(onPressed: (){}, child: Text('More Fun'))
        ],
      )
    );
  }
}
