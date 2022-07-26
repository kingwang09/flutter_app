import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "복합 레이아웃 샘플",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("복합 레이아웃"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.amber[500]),
        Icon(Icons.star, color: Colors.amber[500]),
        Icon(Icons.star, color: Colors.amber[500]),
        Icon(Icons.star, color: Colors.amber[500]),
        Icon(Icons.star, color: Colors.black54)
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text("170 reviews",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 20
              )
          )
        ],
      ),
    );

    final left = Column(
      children: [
        const Text("Title"),
        const Text("여기는 내용 영역 입니다!"),
        ratings,
      ],
    );

    return Row(
      children: [
        Center(
          child: left,
        ),
        Expanded(child: Image.asset("images/Lounge.jpg"))
      ],
    );
  }

}