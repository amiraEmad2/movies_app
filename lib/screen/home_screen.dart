import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // appBar: AppBar(
       // backgroundColor: Colors.black,
        //title: Center(
          //child: Image.asset("assets/logo.jpg",
          ///height: 100,
          //width: 100,),
        //),
      //);
      body: Center(
        child: Text('Home Screen',
        style: TextStyle(
        color: Colors.blue,
        ),

        )),
    );
  }
}
