import 'package:cognicare/screens/modePage.dart';
import 'package:flutter/material.dart';
  
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/1.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery
                            .of(context)
                            .size
                            .height * 0.0375,
                        vertical: MediaQuery
                            .of(context)
                            .size
                            .height * 0.0475,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.55,),
                          Text('CogniCare',
                            // textAlign:  TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.05),),
                          SizedBox(
                            height: MediaQuery
                                .of(context)
                                .size
                                .height * 0.02,),

                          Text(
                            'This app is used to convert text into sign language signs. So mainly, dumb people can easily communicate in public places.Deaf people can recognize what we are saying to them and respond them.This app is very useful for both dump and deaf people.  It helps them to communicate with the society in a better way.''\n''Another main feature of this app is the learning platform. It provides supplementary resources; such as sign language learning materials to help users improve their sign language skills or expand their vocabulary.They can learn about the signs using provided videos.''\n',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: MediaQuery
                                    .of(context)
                                    .size
                                    .height * 0.02),
                          ),
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height*0.03,),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const ModePage(),
                                      ),
                                    );
                                  },
                                  child: Text('START',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: MediaQuery
                                            .of(context)
                                            .size
                                            .height * 0.03),),
                                ),

                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (
                                              context) => const ModePage(),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: MediaQuery
                                          .of(context)
                                          .size
                                          .height * 0.08,
                                      height: MediaQuery
                                          .of(context)
                                          .size
                                          .height * 0.08,
                                      // decoration: BoxDecoration(
                                      //  borderRadius: BorderRadius.circular(50),
                                      //  // color: Colors.redAccent.withOpacity(0.8),
                                      //   ),
                                      child: Center(
                                        child: Icon(
                                          Icons.arrow_forward_sharp,
                                          color: const Color.fromARGB(
                                              255, 250, 249, 249),
                                          size: MediaQuery
                                              .of(context)
                                              .size
                                              .height * 0.04,
                                        ),
                                      ),
                                    )
                                ),
                              ]
                          )
                        ],
                      )
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
