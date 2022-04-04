import 'package:ai_app/home.dart';
import 'package:ai_app/main.dart';
import 'package:flutter/material.dart';



class SplashHomeScreen extends StatefulWidget {
  const SplashHomeScreen({ Key? key }) : super(key: key);

  @override
  State<SplashHomeScreen> createState() => _SplashHomeScreenState();
}

class _SplashHomeScreenState extends State<SplashHomeScreen> {
  @override
  void initState() {
  
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) => 
      Navigator.pushReplacement(context,  MaterialPageRoute(builder: (context)=> HomePage(cameras))));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/1.jpg'),fit:BoxFit.cover ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 100),
            child:  CircularProgressIndicator(
              
            ),
          )
        ],
      ),
    );
  }
}