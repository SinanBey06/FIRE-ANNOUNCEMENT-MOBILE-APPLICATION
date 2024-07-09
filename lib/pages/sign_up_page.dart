import "package:flutter/material.dart"; //We added the widget package


void main() {
  runApp(const SignUpPage ());
}

class SignUpPage extends StatelessWidget{
  const SignUpPage ({super.key});

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
