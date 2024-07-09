import "package:flutter/material.dart"; //We added the widget package


void main() {
  runApp(const ProfilePage ());
}

class ProfilePage extends StatelessWidget{
  const ProfilePage ({super.key});

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
