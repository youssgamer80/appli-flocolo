import 'package:flutter/material.dart';
import 'package:flutter_application_flocolo/joystick.dart';
import 'package:flutter/services.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 234, 248),
      body: Container(
        child: Container(
          child: Column(children: [
            Container(
                margin: EdgeInsets.only(
                  right: 138,
                  left: 0, /*top: 24*/
                ),
                child: Image.asset(
                  "images/Group 37.png",
                  height: 250,
                )),
            Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.landscapeLeft,
                            DeviceOrientation.landscapeRight,
                          ]);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const JoystickExample()),
                          );
                        },
                        child: Image.asset(
                          "images/logo-removebg-preview.png",
                          width: 250,
                        ))
                  ]),
              // child: Image.asset("images/logo",width: 250,)
            ),

            // ancien code pour l'ajout du logo
            /* Container(
              //decoration: BoxDecoration(backgroundBlendMode:true),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const JoystickExample()),
                          );
                        },
                        child: Image.asset("images/logo.png",width: 300,))
                  ]),
            ),*/

            Container(
                margin: EdgeInsets.only(top: 150, right: 0),
                child: Image.asset(
                  "images/Group 39.png",
                  width: 530,
                )),
          ]),
        ),
      ),
    );

    /*return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const JoystickExample()),
              );
            },
            child: const Text('Commencer'),
          ),
        ],
      ),
    );*/
  }
}





























// Page de commande N°2
/*import 'package:flutter/material.dart';
import 'package:flutter_application_flocolo/joystick.dart';


class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 234, 248),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,


        /*decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [],
            
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0,1.0],
          tileMode: TileMode.clamp)
        ),*/
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 350,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                  Container(
                  margin: EdgeInsets.only(right: 138, left: 0),
                  child: Image.asset(
                    "images/Group 37.png",
                    height: 266,
                  )),
                  
                  Container(
                  child: Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const JoystickExample()));
                      },
                      child:  Image.asset("images/logo-removebg-preview.png",width:200),
                    ),
                  ),),
                  ), 
                  Container(
                    margin: EdgeInsets.only(right: 366,left: 0),
                    child: Image.asset("images/Group 39.png",width: 530),
                  ),
                      
                  ],
                ),),
            ],
          ),
        ),
      ),
    );
    
  }
}*/






