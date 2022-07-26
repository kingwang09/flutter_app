
import 'package:flutter/material.dart';
import 'package:flutter_app/layouts/row-images.dart';

void main(){
  runApp(MaterialApp(
    title: "레이아웃 테스트",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("테스트 레이아웃"),
      ),
      body: MyApp(),
    )
  ));
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("테스트");
  }

}