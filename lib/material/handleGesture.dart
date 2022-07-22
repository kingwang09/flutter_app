import 'package:flutter/material.dart';

void main(){
  runApp(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: CustomButton(),
          ),
        ),
      )
  );
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("Custom Button Tap!!");
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.amber[500],
        ),
        child: const Center(
            child:Text("my Button")
        ),
      ),
    );
  }

}