import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return MaterialApp(
      title: "welcome my App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("welcome to flutter App bar")
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        )
      )
    );
  }
}