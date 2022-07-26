import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Hello Column Images',
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello world Column Images"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("images/collins.jpg", width: 100, height: 100,),
        Image.asset("images/timothy.jpg", width: 100, height: 100,),
        Image.asset("images/Lounge.jpg", width: 100, height: 100,),
      ],
    );
  }

}