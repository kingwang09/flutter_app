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

    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

// DefaultTextStyle.merge() allows you to create a default text
// style that is inherited by its child and all subsequent children.
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.kitchen, color: Colors.green[500]),
                const Text('PREP:'),
                const Text('25 min'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.green[500]),
                const Text('COOK:'),
                const Text('1 hr'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.restaurant, color: Colors.green[500]),
                const Text('FEEDS:'),
                const Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          const Text("Title"),
          const Text("여기는 서브 타이틀 내용 영역 입니다!"),
          ratings,
          iconList,
        ],
      ),
    );

    final main = Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 440,
                child: leftColumn,
              ),
              Expanded(child: Image.asset("images/Lounge.jpg")),
            ],
          ),
        ),
      ),
    );
    return main;
  }

}