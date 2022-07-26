import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "테스트 앱",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Appbar 영역"),
      ),
      body: const Center(
        child: Text("헬로월드"),
      ),
    ),
  ));
}