import 'package:flutter/material.dart';
import 'package:mausam/view/mainScreen.dart';
import 'package:mausam/view/splashScreen.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
  showSplashScreen(){
    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  void initState() {
    showSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UnSad',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  showSplash ? splashScreen() : MainScreen(),
    );
  }
}
