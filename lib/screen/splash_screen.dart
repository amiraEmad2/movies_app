import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movies_app/widget/bottom_navbar.dart';

class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
 void inistate(){
   super.initState();
   Timer(Duration(seconds: 3,),(){
   Navigator.pushReplacement(
       context, MaterialPageRoute(
       builder: (context)=>BottomNavBar()));
   });

 }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/logo.png'),
    );
  }
}
