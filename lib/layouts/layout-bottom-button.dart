
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
    final button1 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.phone),
        const Text("전화")
      ],
    );

    final button2 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.navigation),
        const Text("길찾기")
      ],
    );

    final button3 = Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.share),
        const Text("공유")
      ],
    );
    final bottom = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        button1,
        button2,
        button3
      ],
    );

    return bottom;
  }

}