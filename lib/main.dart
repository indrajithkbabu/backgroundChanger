import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} 

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<Color>randomColorList =[
    Color(0xFFC21858),
    Color(0xfff44336), 
    Color(0xff9c27b0),
    Color(0xff673ab7),
    Color(0xff3f51b5),
    Color(0xff4caf50),
    Color(0xff8bc34a),
    Color(0xffff9800),
    Color(0xff9e9e9e),


  ];

int? index;
Color? colorrightnow;
  void changeColor(){
    setState(() {
      index= Random().nextInt(randomColorList.length);
      colorrightnow=randomColorList[index!];
    });
  }


  @override
  Widget build(BuildContext contex) {
    return 
 Container(
  decoration: BoxDecoration(
    color: colorrightnow,
    
  ),
  child: TextButton(

    
    onPressed: changeColor,
       style: ButtonStyle(
      
    overlayColor: MaterialStateProperty.all(Colors.transparent),
  ),
      
  child: Text("click here",style: TextStyle(fontSize: 20,fontStyle:FontStyle.italic,fontWeight: FontWeight.bold),)
  ,
  ),
);
    
    
  }
}