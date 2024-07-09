import "package:flutter/material.dart"; //We added the widget package


void main() {
  runApp(const Notice ());
}

class Notice extends StatelessWidget{
  const Notice ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
       
        ),
      ),
      
    );
  }
}
