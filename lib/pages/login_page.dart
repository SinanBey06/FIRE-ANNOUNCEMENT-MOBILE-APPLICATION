import "package:app/constant/color.dart";
import "package:flutter/material.dart";
import "package:hexcolor/hexcolor.dart"; //We added the widget package


void main() {
  runApp(const Login ());
}

class Login extends StatefulWidget{
  const Login ({super.key});

  @override
  State<Login> createState() => _LoginState();
}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width, //Adjusted to screen width
            height: MediaQuery.of(context).size.height,

            decoration: BoxDecoration( // -------Enter Icon-------------------------------------------------------------
              color: HexColor(loginBackgroundcolor),
            ),
            child: Column(
              children: [
                Container(
                  width: 170,
                  height: 170,
                  margin: const EdgeInsets.only(top: 100),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(120),
                    border: Border.all(
                            color: HexColor(white),
                            width: 3,
                          ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                            color: HexColor(logincolor2),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: HexColor(logincolor1),
                              width: 13,
                  ),
                ),
                child: const Icon(
                  Icons.login,
                  size: 60,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15),
            child:  const Text("Giriş Yapınız",
            style: TextStyle(         
              color: Colors.white, 
              fontSize: 20
              ),
            )
          ),
//-----------------------------------------------------------------------------------------------------

          Container(   // --------------First box------------------------------------------------------
            decoration:  BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(50)
            ),
            margin: const EdgeInsets.only(left: 40,right: 40, bottom: 15, top: 60),
            padding: const EdgeInsets.only(left: 20, right: 40, bottom: 20, top: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "E-Posta adresini giriniz...",
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                prefixIcon: Icon(
                  Icons.people_alt_outlined, 
                  color: Colors.black,
                  ),
              ) ,
            style: const TextStyle(
              color: Colors.amberAccent
              
            ),
            ),
          ),
//-------------------------------------------------------------------------------------------------------



          Container(   //----------------- Second box-----------------------------------------------------
            decoration:  BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(50)
            ),
            margin: const EdgeInsets.only(left: 40,right: 40, bottom: 20, top: 10),
            padding: const EdgeInsets.only(left: 20, right: 40, bottom: 20, top: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "şifrenizi giriniz...",
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                prefixIcon: Icon(
                  Icons.vpn_key_outlined, 
                  color: Colors.black,
                  ),
              ) ,
            style: const TextStyle(
              color: Colors.amberAccent
              
            ),
            ),
          )
        ],
            ),
          )
//--------------------------------------------------------------------------------------------------------
      )
    );
  }
}
