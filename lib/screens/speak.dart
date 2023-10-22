import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homePage.dart';
import 'modePage.dart';

class SpeakPage extends StatefulWidget {
  const SpeakPage({super.key});

  @override
  State<SpeakPage> createState() => _SpeakPageState();
}
   
class _SpeakPageState extends State<SpeakPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, //----------- Assign the scaffold key-------------
        appBar: AppBar(
          //title: Text('Learn Page'),
          automaticallyImplyLeading: false, //--------- remove default back arrow-----------------
          backgroundColor: Color(0xFF030404),
          actions: [
            //----------------------set drawer icon ---------------------
            Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,right: MediaQuery.of(context).size.width*0.06),
              height:MediaQuery.of(context).size.height*0.12,
              width: MediaQuery.of(context).size.width*0.12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF030404),
                    Color(0xFF2F3944), // Transparent color
                  ],
                ),
                border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color:Color.fromARGB(243, 116, 45, 0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x120E0E59),
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
              ),
            ),
          ],
          //------------------- set the app bar height -----------------------
          toolbarHeight:MediaQuery.of(context).size.height*0.1,

          //--------------------------- back arrow to previous page ---------------------------
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>ModePage(),
                ),
              );
            },
            child: Container(
              margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.025),
              height:MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width*0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF030404),
                    Color(0xFF2F3944), // Transparent color
                  ],
                ),
                border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color:Color.fromARGB(243, 116, 45, 0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x120E0E59),
                    offset: Offset(4, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: MediaQuery.of(context).size.height*0.03,
                ),
              ),
            ),
          ),
        ),

        //------------------------------ drawer options --------------------------
        endDrawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.cabin_sharp),
                title: Text('Mode'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ModePage(),
                    ),
                  );
                },
              ), // Add more drawer items as needed
            ],
          ),
        ),


        body: Center(
            child: Stack(
                children: [
                  Container(
                      height:MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,

                      //------------------------------------------ set background color -----------------------
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF030404),
                              Color(0xFF2F3944),
                            ]
                        ),
                      )
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        //-------------------- setting backarrow in body --------------------------
                        //     GestureDetector(
                        //       onTap: () {
                        //         Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //             builder: (context) =>HomePage(),
                        //           ),
                        //         );
                        //       },
                        //       child: Container(
                        //         margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.06),
                        //         height:MediaQuery.of(context).size.height*0.2,
                        //         width: MediaQuery.of(context).size.width*0.2,
                        //         decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           gradient: LinearGradient(
                        //             begin: Alignment.topCenter,
                        //             end: Alignment.bottomCenter,
                        //             colors: [
                        //               Color(0xFF030404),
                        //               Color(0xFF2F3944), // Transparent color
                        //             ],
                        //           ),
                        //           border: Border.all(
                        //             width: 2.0,
                        //             style: BorderStyle.solid,
                        //             color:Color.fromARGB(243, 116, 45, 0),
                        //           ),
                        //           boxShadow: [
                        //             BoxShadow(
                        //               color: Color(0x120E0E59),
                        //               offset: Offset(4, 4),
                        //               blurRadius: 4,
                        //               spreadRadius: 0,
                        //             ),
                        //           ],
                        //         ),
                        //         child: Center(
                        //           child: Icon(
                        //             Icons.arrow_back,
                        //             color: Colors.white,
                        //             size: MediaQuery.of(context).size.height*0.05,
                        //           ),
                        //         ),
                        //       ),
                        //     ),



                      ],
                    ),
                  ),


                ]
            )
        )
    );
  }
}

