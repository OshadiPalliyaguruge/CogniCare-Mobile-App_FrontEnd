import 'dart:ffi';

import 'package:flutter/material.dart';

import '../screens/modePage.dart';
import 'package:cognicare/screens/hello.dart';
 
Container BlockSet1(BuildContext context, String text, String imageName, Widget page) {
  return  Container(
      margin: EdgeInsets.only(
          top:MediaQuery.of(context).size.height*0.7,
          left: MediaQuery.of(context).size.width*0.073
      ),

          width: MediaQuery.of(context).size.width * 0.35,
          height: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(18.0),
            color: Color.fromRGBO(19, 26, 33, 1),
            border: Border.all(
              width: 1.0,
              style: BorderStyle.solid,
              color:Color.fromARGB(243, 116, 45, 0),
            ),
          ),


      child: GestureDetector(
          onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => page,
                ),
              );
            },

            child: Column(
              children: [
                Image.asset(
                  "assets/$imageName",
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.37,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.width * 0.01), // Adjust the spacing between the image and text
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),

  );
}

Container BlockSet2(BuildContext context, String text, String imageName, Widget page,double progress,IconData iconData) {
  return  Container(
    margin: EdgeInsets.only(
        top:MediaQuery.of(context).size.height*0.06,
        left: MediaQuery.of(context).size.width*0.1),

    padding: EdgeInsets.only(
        top:MediaQuery.of(context).size.height*0.02,),

    width: MediaQuery.of(context).size.width * 0.33,
    height: MediaQuery.of(context).size.width * 0.33,

    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(18.0),
      color: Color.fromRGBO(19, 26, 33, 1),
      border: Border.all(
        width: 1.0,
        style: BorderStyle.solid,
        color:Color.fromARGB(243, 116, 45, 0),
      ),
    ),

    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },

      child: Column(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.width * 0.03), // Adjust the spacing between the image and text
          // Image.asset(
          //   "assets/$imageName",
          //   width: MediaQuery.of(context).size.width * 0.3,
          //   height: MediaQuery.of(context).size.width * 0.1,
          // ),
          Icon(
            iconData,
            color: Colors.white,
            size: MediaQuery.of(context).size.width*0.1,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.width * 0.045),
          Container(
              padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width*0.03,
                  right: MediaQuery.of(context).size.width*0.03),


            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.01,// Set the height as per your requirement
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey, // Set the background color of the progress bar
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green), // Set the color of the progress bar
              value: progress, // Set the current progress value (0.0 to 1.0)
            ),
          )
        ],
      ),
    ),

  );
}

