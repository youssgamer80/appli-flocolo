
/*import 'package:flutter/material.dart';
import 'package:flutter_application_flocolo/balle.dart';
import 'package:flutter_application_flocolo/main.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

class JoystickExample extends StatefulWidget {
  const JoystickExample({Key? key}) : super(key: key);

  @override
  _JoystickExampleState createState() => _JoystickExampleState();
}

class _JoystickExampleState extends State<JoystickExample> {
  double _x = 100;
  double _y = 100;
  JoystickMode _joystickMode = JoystickMode.vertical; // direction du premier joystic
  JoystickMode _joystickMode1 = JoystickMode.horizontal;// direction du 2ème joystic

  /*@override
  void didChangeDependencies() {
    _x = MediaQuery.of(context).size.width / 2 - ballSize / 2;
    super.didChangeDependencies(); @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            child: const Text(''),
          ),
        ],
      ),
    );
  }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     //backgroundColor: Colors.green,
      // code la barre de choix pour les directions
      /*appBar: AppBar(
        title: const Text('Page de commande'),
        actions: [
          JoystickModeDropdown(
            mode: _joystickMode,
            onChanged: (JoystickMode value) {
              setState(() {
                _joystickMode = value;
              });
            },
          ),
        ],
      ),*/



      body: SafeArea(
        child: Stack(
          children: [
            Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 105, 197, 111),
                    Color.fromARGB(255, 23, 178, 240)
                  ]
                   )
              ),
            
        /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/white-concrete-wall.jpg"),
            fit: BoxFit.cover,
          ),
      ),*/
            ),
            ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back)),
            Container(
              //color: Color.fromARGB(185, 253, 247, 247),
              height: 130,
             // width: 300,
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: Column(
                children: [
                   Container(  
                  margin: EdgeInsets.only(left: 710, top: 10.0) ,
                
                  child: Row(
                    children: [
                       Image.asset("images/season.png",
                      width: 25,),
                      //Icon(Icons.battery_saver_sharp),
                      SizedBox(width: 3,),
                      Text('Meteo',style: TextStyle(fontSize: 12),),
                      //Text('La pluiviometrie',style: TextStyle(fontSize: 12),),
                    
                
                    ],
                  ),
                  
                ),
                 Container(  
                   margin: EdgeInsets.only(left: 710, top: 20.0) ,
                  //margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5.0),
                
                  child: Row(
                    children: [
                      Image.asset("images/propeller.png",
                      width: 30 ,),
                     // Icon(Icons.battery_saver_sharp),
                      SizedBox(width: 3,),
                      Text('Motor',style: TextStyle(fontSize: 12),),
                      //Text('Etat des moteurs',style: TextStyle(fontSize: 12),),
                    
                
                    ],
                  ),
                  
                ),
                  
                  Container(  
                    margin: EdgeInsets.only(left: 710, top: 20.0) ,
                  //margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5.0),
                
                  child: Row(
                    children: [
                      Image.asset("images/accumulator.png",
                      width: 25,),
                      //Icon(Icons.battery_saver_sharp),
                      SizedBox(width: 3,),
                      Text('80%',style: TextStyle(fontSize: 12),),
                    
                
                    ],
                  ),
                  
                ),
                   
                ],
              ),
            ),
            Ball(_x, _y),
            Align(
              alignment: const Alignment(0, 0.8),
              child: Column(
                children: [
                  Container(
                    //width: 100,
                    margin: EdgeInsets.only(top: 0, left: 50,/*top: 170*/ ),
                    child: Column(
                      children: [
                         SizedBox(width: 70, height: 0, /*height: 450,*/),
                    Joystick(
                    mode: _joystickMode,
                    listener: (details) {
                      setState(() {
                        _x = _x + step * details.x;
                        _y = _y + step * details.y;
                      });
                    },
                  ),
                      ],
                    ),
                  ),

                  Container(
                   // width: 300,
                    margin: EdgeInsets.only(right: 170, left: 0,/*top: 24*/ ),
                    child: Column(
                      children: [
                         SizedBox(width: 230,height: 375,),

                    Joystick(
                    mode: _joystickMode1,
                    listener: (details) {
                      setState(() {
                        _x = _x + step * details.x;
                        _y = _y + step * details.y;
                      });
                    },
                  ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/










// 1er code 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_flocolo/balle.dart';
import 'package:flutter_application_flocolo/main.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

class JoystickExample extends StatefulWidget {
  const JoystickExample({Key? key}) : super(key: key);

  @override
  _JoystickExampleState createState() => _JoystickExampleState();
}

class _JoystickExampleState extends State<JoystickExample> {
  double _x = 100;
  double _y = 100;
  JoystickMode _joystickMode = JoystickMode.vertical; // direction du premier joystic
  JoystickMode _joystickMode1 = JoystickMode.horizontal;// direction du 2ème joystic

  /*@override
  void didChangeDependencies() {
    _x = MediaQuery.of(context).size.width / 2 - ballSize / 2;
    super.didChangeDependencies(); @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            child: const Text(''),
          ),
        ],
      ),
    );
  }
  }*/

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
     //backgroundColor: Colors.green,
      // code la barre de choix pour les directions
      /*appBar: AppBar(
        title: const Text('Page de commande'),
        actions: [
          JoystickModeDropdown(
            mode: _joystickMode,
            onChanged: (JoystickMode value) {
              setState(() {
                _joystickMode = value;
              });
            },
          ),
        ],
      ),*/



      body: SafeArea(
        child: Stack(
          children: [
            Container(

              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 105, 197, 111),
                    Color.fromARGB(255, 23, 178, 240)
                  ]
                   )
              ),
            
        /*decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/white-concrete-wall.jpg"),
            fit: BoxFit.cover,
          ),
      ),*/
            ),
            ElevatedButton(onPressed: (){
              SystemChrome.setPreferredOrientations([
                DeviceOrientation.portraitDown,
                DeviceOrientation.portraitUp,
              ]);
              Navigator.pop(context);}, child: Icon(Icons.arrow_back)),
            Container(
              //color: Color.fromARGB(185, 253, 247, 247),
              height: 130,
             // width: 300,
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              child: Column(
                children: [
                   Container(  
                  margin: EdgeInsets.only(left: 710, top: 10.0) ,
                
                  child: Row(
                    children: [
                       Image.asset("images/season.png",
                      width: 25,),
                      //Icon(Icons.battery_saver_sharp),
                      SizedBox(width: 3,),
                      Text('Meto',style: TextStyle(fontSize: 12),),
                      //Text('La pluiviometrie',style: TextStyle(fontSize: 12),),
                    
                
                    ],
                  ),
                  
                ),
                 Container(  
                   margin: EdgeInsets.only(left: 710, top: 20.0) ,
                  //margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5.0),
                
                  child: Row(
                    children: [
                      Image.asset("images/propeller.png",
                      width: 30 ,),
                     // Icon(Icons.battery_saver_sharp),
                      SizedBox(width: 3,),
                      Text('Motor',style: TextStyle(fontSize: 12),),
                      //Text('Etat des moteurs',style: TextStyle(fontSize: 12),),
                    
                
                    ],
                  ),
                  
                ),
                  
                  Container(  
                    margin: EdgeInsets.only(left: 710, top: 20.0) ,
                  //margin: EdgeInsets.symmetric(horizontal: 60, vertical: 5.0),
                
                  child: Row(
                    children: [
                      Image.asset("images/accumulator.png",
                      width: 25,),
                      //Icon(Icons.battery_saver_sharp),
                      SizedBox(width: 3,),
                      Text('80%',style: TextStyle(fontSize: 12),),
                    
                
                    ],
                  ),
                  
                ),
                   
                ],
              ),
            ),
            Ball(_x, _y),
            Align(
              alignment: const Alignment(0, 0.8),
              child: Row(
                children: [
                  SizedBox(width: 70,),
                  Joystick(
                    mode: _joystickMode,
                    listener: (details) {
                      setState(() {
                        _x = _x + step * details.x;
                        _y = _y + step * details.y;
                      });
                    },
                  ),
                  SizedBox(width: 230,),

                    Joystick(
                    mode: _joystickMode1,
                    listener: (details) {
                      setState(() {
                        _x = _x + step * details.x;
                        _y = _y + step * details.y;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}