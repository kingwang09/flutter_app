import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
          title: "Material App 연습",
          home: IntroHome(),
      )
  );
}

class IntroHome extends StatelessWidget {
  const IntroHome({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: "네비게이션 메뉴",
            onPressed: null,
        ),
        title: const Text("테스트 AppBar"),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search))
        ]
      ),
      body: const Center(
        child: Text("앱 내용 영역입니다."),
      ),
      floatingActionButton: const FloatingActionButton(
          onPressed: null,
          tooltip: "Add",
          child: Icon(Icons.add)
      ),
    );
  }
}