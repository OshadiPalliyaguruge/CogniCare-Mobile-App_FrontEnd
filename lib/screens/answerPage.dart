
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../reusables/learnSigns.dart';
import 'homePage.dart';
import 'learn.dart';
import 'modePage.dart';

class answerPage extends StatefulWidget {
  const answerPage({super.key});
   
  @override
  State<answerPage> createState() => _answerPageState();
}

class _answerPageState extends State<answerPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> videoUrls = [
    'https://youtu.be/0FcwzMq4iWg?si=g1mgzIkv8p42zRSu',
    'https://youtu.be/p2W3nbf9aH4?si=g_5YWJKF81Ekn_ll',
    'https://youtu.be/Dsoh-BonHUw?si=LBZBEwsy4PDDSfPS',
    'https://youtu.be/o_qBUh7ZKSQ?si=yYS5Bc_w-nMRmPYN',
    'https://youtu.be/fN4baaByX9A?si=fQJkI5SzdaV32f4O'
  ];

  // Custom names for each item
  final List<String> itemNames = [
    'ASL Basics'
        '\n\n\t\t\t\t\t\t\t' 'Basic Signs in ASL',
    'Weather Signs'
        '\n\n\t\t\t\t\t\t\t' 'Type of weather in ASL',
    'Shopping Signs'
        '\n\n\t\t\t\t\t\t\t' 'Shopping related Signs in ASL',
    'Shopping Signs'
        '\n\n\t\t\t\t\t\t\t' 'Shopping related Signs in ASL',
    'Animal Signs'
        '\n\n\t\t\t\t\t\t\t' 'Animals related Signs in ASL',


  ];

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
                builder: (context) =>LearnPage(),
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
                  // Add a ListView here to display a list of clickable items
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(), // to enable scrolling within SingleChildScrollView
                    itemCount: videoUrls.length,
                    itemBuilder: (BuildContext context, int index) {
                      List<String> lines = itemNames[index].split('\n');

                      return GestureDetector(
                        onTap: () {
                          // Navigate to another page when item is clicked
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LearnSignPage(videoUrl: videoUrls[index]),
                            ),
                          );
                        },
                        child:Container(
                          margin: EdgeInsets.only(
                            top:MediaQuery.of(context).size.height*0.03,
                            //left: MediaQuery.of(context).size.width*0.073
                          ),

                          padding: EdgeInsets.only(
                            top:MediaQuery.of(context).size.height*0.02,),

                          width: MediaQuery.of(context).size.width * 0.35,
                          height: MediaQuery.of(context).size.width * 0.3,

                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            //borderRadius: BorderRadius.circular(18.0),
                            color: Color.fromRGBO(19, 26, 33, 1),
                            border: Border.all(
                              width: 0.5,
                              style: BorderStyle.solid,
                              color:Color.fromARGB(243, 116, 45, 0),
                            ),
                          ),

                          child: ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  lines[0], // First line
                                  style: TextStyle(
                                    color: Colors.white, // Set the text color to white
                                    fontSize: MediaQuery.of(context).size.height*0.025, // Set the font size for the first line
                                    fontWeight: FontWeight.bold, // Set the font weight if needed
                                  ),
                                ),
                                if (lines.length > 1)
                                  Text(
                                    lines.sublist(1).join('\n'), // Remaining lines
                                    style: TextStyle(
                                      color: Colors.white, // Set the text color to white
                                      fontSize: MediaQuery.of(context).size.height*0.02,
                                      fontStyle: FontStyle.italic,// Set the font size for the remaining lines
                                    ),
                                  ),
                              ],
                            ),
                            trailing: Transform.scale(
                              scale: MediaQuery.of(context).size.height*0.0025, // Adjust the scale factor to increase arrow length
                              child: Icon(
                                Icons.arrow_forward,
                                color: Color.fromRGBO(243, 116, 45, 0.6), // Adjust the alpha value (0.5 for example),
                                // size: MediaQuery.of(context).size.height*0.04,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  //SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}