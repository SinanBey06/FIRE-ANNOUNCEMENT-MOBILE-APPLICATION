import "package:flutter/material.dart"; //We added the widget package


void main() {
  runApp(const SupportPage ());
}

class SupportPage extends StatelessWidget{
  const SupportPage ({super.key});

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
