import 'dart:ffi';
import 'package:cognicare/screens/speak.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../reusables/reusable.dart';
import 'homePage.dart';
import 'modePage.dart';


class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // BoxDecoration _normalDecoration = BoxDecoration(
  //   shape: BoxShape.rectangle,
  //   borderRadius: BorderRadius.circular(18.0),
  //   color: Color.fromRGBO(19, 26, 33, 1),
  //   border: Border.all(
  //     width: 1.0,
  //     style: BorderStyle.solid,
  //     color:Color.fromARGB(243, 116, 45, 0),
  //   ),
  // );
  //
  // BoxDecoration _tappedDecoration = BoxDecoration(
  //   shape: BoxShape.rectangle,
  //   borderRadius: BorderRadius.circular(18.0),
  //   color: Colors.green, // Change to the color you want when tapped
  //   border: Border.all(
  //     width: 1.0,
  //     style: BorderStyle.solid,
  //     color:Color.fromARGB(243, 116, 45, 0),
  //   ),
  // );
  //
  // void _onTap() {
  //   setState(() {
  //     _normalDecoration = _tappedDecoration;
  //   });
  //
  //   Future.delayed(Duration(seconds: 5), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => page,
  //       ),
  //     );
  //   });
  // }

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

                       Container(
                         margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05,left: MediaQuery.of(context).size.width*0.055),
                         //padding: EdgeInsets.fromLTRB(25 * MediaQuery.of(context).size.width, 20 * MediaQuery.of(context).size.height, 213 * MediaQuery.of(context).size.width, 14 * MediaQuery.of(context).size.height),
                         height:MediaQuery.of(context).size.height*0.07,
                         width: MediaQuery.of(context).size.width*0.9,
                         decoration: BoxDecoration(
                           gradient: LinearGradient(
                             begin: Alignment.topCenter,
                             end: Alignment.bottomCenter,
                             colors: [
                               Color.fromRGBO(81, 77, 77, 0.5),
                               Color.fromRGBO(81, 77, 77, 0.5),
                             ],
                           ),
                           borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.03),
                           border: Border.all(
                             color: Colors.white, // Set border color
                             width: MediaQuery.of(context).size.height*0.002, // Set border width
                           ),
                           boxShadow: [
                             BoxShadow(
                               color: Color.fromRGBO(255, 255, 255, 0.35),
                               offset: Offset(4, 4),
                               blurRadius: MediaQuery.of(context).size.height*0.04,
                               spreadRadius: 0,
                             ),
                           ],
                         ),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                              Container(
                               margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.03),
                                //padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
                                height:MediaQuery.of(context).size.height*0.04,
                                width: MediaQuery.of(context).size.width*0.07,

                                child: Center(
                                  child: Icon(
                                   Icons.search,
                                   color: Colors.white,
                                   size: MediaQuery.of(context).size.height*0.03,
                             ),
                                ),
                              ),
                             Container(
                               margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04),
                               //padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
                               height:MediaQuery.of(context).size.height*0.04,
                               width: MediaQuery.of(context).size.width*0.25,

                               child: Center(
                                 child: Text(
                                   'Search',
                                   style: TextStyle(
                                     fontFamily: 'Inter',
                                     fontSize: MediaQuery.of(context).size.height*0.027,
                                     fontWeight: FontWeight.w700,
                                     height: 1.2125 * MediaQuery.of(context).size.width / MediaQuery.of(context).size.height,
                                     color: Color(0xb2ffffff),
                                   ),
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),

                       Container(
                         margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.05,left: MediaQuery.of(context).size.width*0.055),
                         //padding: EdgeInsets.fromLTRB(25 * MediaQuery.of(context).size.width, 20 * MediaQuery.of(context).size.height, 213 * MediaQuery.of(context).size.width, 14 * MediaQuery.of(context).size.height),
                         height:MediaQuery.of(context).size.height*0.2,
                         width: MediaQuery.of(context).size.width*0.9,
                         decoration: BoxDecoration(
                           color: Colors.transparent,
                           borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height*0.01),
                           border: Border.all(
                             color: Color.fromRGBO(108, 108, 108, 1), // Set border color
                             width: MediaQuery.of(context).size.height*0.0045, // Set border width
                           ),
    ),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               margin: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.04),
                               //padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
                               height:MediaQuery.of(context).size.height*0.2,
                               width: MediaQuery.of(context).size.width*0.5,

                               child: Center(
                                 child: Text(
                                   'WELCOME TO THE LEARN',
                                   textAlign:  TextAlign.start,
                                   style: TextStyle(
                                     fontFamily: 'Inter',
                                     fontSize: MediaQuery.of(context).size.height*0.03,
                                     fontWeight: FontWeight.w700,
                                     color: Color(0xb2ffffff),
                                   ),
                                 ),
                               ),
                             ),
                             Container(
                               margin: EdgeInsets.only(right: MediaQuery.of(context).size.width*0.04),
                               //padding:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.02),
                               height:MediaQuery.of(context).size.height*0.1,
                               width: MediaQuery.of(context).size.width*0.3,

                               child: Center(
                                 child: Icon(
                                   Icons.play_lesson,
                                   color: Colors.white,
                                   size: MediaQuery.of(context).size.height*0.1,
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),

                       Row(
                           children: [
                             BlockSet2(context,"Hello",'1.png',LearnPage(),0.6,Icons.accessibility_sharp),
                             SizedBox(
                               width: MediaQuery.of(context).size.width*0.01,
                             ),
                             BlockSet2(context,"A-Z",'1.png',SpeakPage(),0.2,Icons.sort_by_alpha),
                           ]
                       ),

                       Row(
                           children: [
                             BlockSet2(context,"Love",'1.png',LearnPage(),0.5,Icons.heart_broken_sharp),
                             SizedBox(
                               width: MediaQuery.of(context).size.width*0.01,
                             ),
                             BlockSet2(context,"Answer",'1.png',SpeakPage(),0.8,Icons.menu_book_sharp),
                           ]
                       )

                     ],
                   ),
                ),


    ]
    )
    )
    );
  }
}
