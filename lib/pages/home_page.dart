import 'package:app/constant/color.dart'; //we included our own file called constant.
import 'package:flutter/material.dart'; //We added the widget package
import 'package:hexcolor/hexcolor.dart'; // We included the color file with the hex code.


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  

  @override
  Widget build(BuildContext context) {

    double appBarSize =70;
    return MaterialApp( //We made the screen completely white
      debugShowCheckedModeBanner: false, //We removed the text on the top right
      home: SafeArea( //We restored the device top panel to its original state.
        child: Scaffold( 

          appBar: AppBar(
            title: const Text("Boran"),
            centerTitle: true,
            backgroundColor: HexColor(red),
            titleTextStyle: const TextStyle( color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            toolbarHeight: appBarSize,
          
          ) ,
          body: Center(
            child: Center(
              child: ConstrainedBox(
                constraints:
                const BoxConstraints.tightFor(height: 100, width: 250),
                child: ElevatedButton(
                  onPressed: () {},
                  
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor(red),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                  child:const Text("İHBAR",
                  style: TextStyle(
                    color:Colors.white, fontSize: 40, fontWeight: FontWeight.bold
            )
              ),
                )
                  )
                    ),
          ),
          
        ),
      ),

    );
  }
}
