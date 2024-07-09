import "package:flutter/material.dart"; //We added the widget package


void main() {
  runApp(const EducationPage ());
}

class EducationPage extends StatelessWidget{
  const EducationPage ({super.key});

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