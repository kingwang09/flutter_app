import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Hello Row Images',
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Hello world Row Images"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Image.asset("images/collins.jpg")),
        Expanded(child: Image.asset("images/timothy.jpg")),
        Expanded(child: Image.asset("images/Lounge.jpg")),
      ],
    );
  }

}