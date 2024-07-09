
import "package:app/constant/color.dart";
import "package:app/pages/login_page.dart";
import "package:flutter/material.dart";
import "package:hexcolor/hexcolor.dart";     


class EntrancePage extends StatelessWidget{     //We created the main class of our page
  const EntrancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,    //We removed the text on the top right
      home: SafeArea(     //safearea is a widget that allows a certain part of a widget to remain away from the device's screen or other widgets.
        child: Scaffold(     //Scaffold within the Material Design design means scaffolding. We can say that it forms the main skeleton of our program. Scaffold is a class that contains many named parameters.
          body: Expanded(       //child: Image(image: AssetImage("lib/assets/images/tasarım.boran")
            child: Column(

          mainAxisAlignment: MainAxisAlignment.end,      //We pinned the buttons to the bottom of the page. but they will change
          children: [

            const ImageLogo(),

            const SizedBox(
              height: 40,
            ),

            Button(
              iconData: Icons.login,      //login icon selected
              buttonText: 'Giriş',      //The login button text was written as 'Giriş'
              onTap: (){ 
                Navigator.push(context, 
                MaterialPageRoute(
                  builder:(context) =>  const Login(),
                  )
                  );
              },      
            ),
            const SizedBox(
              height: 30,      //We determined the distance between the buttons.
            ),
            Button(
              iconData: Icons.account_box,       //account_box icon selected
              buttonText: 'Kayıt Ol',      //The Sign up button text was written as 'Kayıt Ol'
              onTap: (){
               // Navigator.push(context, 
               // MaterialPageRoute(
                 // builder:(context) => const SignUpPage(),
                 // )
                 // );
              }  //What to do when touched
            ),
            const SizedBox(
              height: 160,        //We determined the distance between the buttons at the bottom of the application.
            ),

          ],

            ),
          ),
        )
      )
    );
    
  }
}

class Button extends StatelessWidget {      // We determined the button properties and turned them into a standard class.
  const Button({
    Key? key,
    required this.iconData,     //You must assign a value to this variable wherever you call this object.(required)
    required this.buttonText,   
    this.onTap,
  }) : super(key: key);
  final IconData iconData;
  final String buttonText;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        elevation: 10.0,         //The degree of shading behind the button is adjusted
        borderRadius: BorderRadius.circular(10.0), //determines the edge bends of the buttons
        child: InkWell(          //The InkWell widget adds a touch interaction to the included widget and displays an ink effect during that interaction.
          onTap: onTap,
          child: Container(       //Container Widget is a widget class that can customize the position, size and visual appearance of the widgets placed on the page.
            height: 70.0,         //adjust button height
            width: 220.0,         //adjust button width
            decoration: BoxDecoration(         //With the Container In decoration parameter, you can give these boxes different looks and place pictures inside them.
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(           //It is a container widget that includes widgets side by side. One of its most important features is the ability to have more than one widget side by side with the childeren[ ] parameter.
              children: [
                Container(
                  height: 100.0,    //adjusts icon height
                  width: 60.0,      //adjusts icon width
                  decoration: BoxDecoration(
                    color: HexColor(red),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(
                    iconData,
                    color: HexColor(white),
                  ),
                ),
                Expanded(
                  child: Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    style: const TextStyle(     //Sets the text settings inside the button
                        fontSize: 25,
                        color: Color.fromARGB(255, 240, 114, 41),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class ImageLogo extends StatelessWidget {
  const ImageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.fromLTRB(10, 10, 10,10),
        height: 220,
        width: 220,
        child: const Image(
        image: AssetImage(
          "lib/assets/images/logom.jpg")
    )
      )
      
    );
  }
}