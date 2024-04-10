import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyHomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.2),
          image: DecorationImage(image: AssetImage('Assets/images/splashImage.jpg'),fit: BoxFit.cover,opacity: .8 ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 550,),
              Text("Countries App",
                style: TextStyle(fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
