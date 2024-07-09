import 'package:app/pages/entrance_page.dart';
import 'package:flutter/material.dart'; //We added the widget package


void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //We made the screen completely white
      debugShowCheckedModeBanner: false, //We removed the text on the top right
      home: EntrancePage()
    );
  }
}

