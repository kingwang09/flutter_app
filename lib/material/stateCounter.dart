import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: null,
          ),
        ),
      )
  );
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<StatefulWidget> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}