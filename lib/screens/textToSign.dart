import 'package:cognicare/screens/learn.dart';
import 'package:flutter/material.dart';

class TextToSignPage extends StatefulWidget {
  const TextToSignPage({super.key});

  @override
  State<TextToSignPage> createState() => _TextToSignPageState();
}

class _TextToSignPageState extends State<TextToSignPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController _textController = TextEditingController();

  void _handleSubmit(BuildContext context) {
    String inputText = _textController.text;

 
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey, //----------- Assign the scaffold key-------------
        // appBar: AppBar(
        //   //title: Text('Learn Page'),
        //   automaticallyImplyLeading: false, //--------- remove default back arrow-----------------
        //   backgroundColor: Color(0xFF030404),
        //
        //   //------------------- set the app bar height -----------------------
        //   toolbarHeight:MediaQuery.of(context).size.height*0.1,
        //
        //   //--------------------------- back arrow to previous page ---------------------------
        //   leading: GestureDetector(
        //     onTap: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) =>ModePage(),
        //         ),
        //       );
        //     },
        //     child: Container(
        //       margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.025),
        //       height:MediaQuery.of(context).size.height*0.2,
        //       width: MediaQuery.of(context).size.width*0.2,
        //       decoration: BoxDecoration(
        //         shape: BoxShape.circle,
        //         gradient: LinearGradient(
        //           begin: Alignment.topCenter,
        //           end: Alignment.bottomCenter,
        //           colors: [
        //             Color(0xFF030404),
        //             Color(0xFF2F3944), // Transparent color
        //           ],
        //         ),
        //         border: Border.all(
        //           width: 2.0,
        //           style: BorderStyle.solid,
        //           color:Color.fromARGB(243, 116, 45, 0),
        //         ),
        //         boxShadow: [
        //           BoxShadow(
        //             color: Color(0x120E0E59),
        //             offset: Offset(4, 4),
        //             blurRadius: 4,
        //             spreadRadius: 0,
        //           ),
        //         ],
        //       ),
        //       child: Center(
        //         child: Icon(
        //           Icons.arrow_back,
        //           color: Colors.white,
        //           size: MediaQuery.of(context).size.height*0.03,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        //------------------------------ drawer options --------------------------

        body: SingleChildScrollView(
          child: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  child:
                  Container(
                      height:MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
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
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/texting2.png"),
                      fit: BoxFit.fill,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.9), // Adjust the opacity value here (0.0 - 1.0)
                        BlendMode.dstATop,
                      ),
                    ),
                    borderRadius: BorderRadius.only(
                      //bottomLeft: Radius.circular(MediaQuery.of(context).size.height * 0.02),
                      bottomRight: Radius.circular(MediaQuery.of(context).size.height * 0.2),
                    ),
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>LearnPage(),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.02,left: MediaQuery.of(context).size.width*0.06),
                    height:MediaQuery.of(context).size.height*0.15,
                    width: MediaQuery.of(context).size.width*0.15,
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
                        size: MediaQuery.of(context).size.height*0.05,
                      ),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.43,left: MediaQuery.of(context).size.width*0.073),
                  child: Text('Text To Sign',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height*0.07),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.65,
                    left: MediaQuery.of(context).size.width * 0.1,
                    right: MediaQuery.of(context).size.width * 0.1,

                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(81, 77, 77, 0.5),
                        Color.fromRGBO(81, 77, 77, 0.5),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.03),
                    border: Border.all(
                      color: Colors.white, // Set border color
                      width: MediaQuery.of(context).size.height * 0.002, // Set border width
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(255, 255, 255, 0.35),
                        offset: Offset(4, 4),
                        blurRadius: MediaQuery.of(context).size.height * 0.04,
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove default border
                      contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Add padding for text
                      hintText: 'Enter text here',
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                Center(
                  child:Container(
                    height:MediaQuery.of(context).size.height * 0.1,
                   // width: MediaQuery.of(context).size.height * 0.2,
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.8,
                    ),
                    child: ElevatedButton(
                      onPressed: () => _handleSubmit(context),
                      child: Text('Generate',
                      style: TextStyle(
                        fontSize:  MediaQuery.of(context).size.height * 0.03, // Adjust the font size here
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(19, 26, 33, 1), // Set background color
                        onPrimary: Colors.white, // Set text color
                        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.07, vertical:MediaQuery.of(context).size.height * 0.002), // Add padding to the button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.06), // Set border radius
                          side: BorderSide(
                            width: MediaQuery.of(context).size.height * 0.002,
                            style: BorderStyle.solid,
                            color: Color.fromARGB(243, 116, 45, 0), // Set border color
                          ),
                        ),
                      ),
                    ),
                  )

                ),

              ],
            ),

          ),
        )


    );
  }
}