
import 'package:flutter/material.dart';
import 'package:mausam/controller/fetchmeme.dart';

class MainScreen extends StatefulWidget {

   MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String imgurl="https://images.unsplash.com/photo-1680004586355-51b867a28570?crop=entropy&cs=tinysrgb&fit=crop&fm=jpg&h=150&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTY4MDU1NzI1MQ&ixlib=rb-4.0.3&q=80&w=500";
  void UpdateImg() async {
    String getImgUrl=await FetchMeme.fetchNewMeme();
    setState(() {
      imgurl=getImgUrl;

    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 180,),
          Text("meme #21",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),

          Text("Target 500 memes",style: TextStyle(fontSize: 15,)),
          SizedBox(height: 60,),
          Image.network(imgurl,),
          SizedBox(height: 60,),
          ElevatedButton(onPressed: (){
            UpdateImg();
          }, child: Container(

              height: 50,
              width: 80,
              child: Center(child: Text('More Fun')),

          )),
          Spacer(),
          Text('App created by ',style: TextStyle(fontSize: 15),),
          Text('Rishi',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
          SizedBox(height: 10,)
        ],

      )
    );
  }
}
