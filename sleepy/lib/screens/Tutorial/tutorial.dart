import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Step1 extends StatefulWidget {
  const Step1({super.key});

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body:Stack(
              children:[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/SplashBg.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                      color: Colors.black.withOpacity(0),
                    ),
                  ),
                ),
                Container(
                  color:  Colors.black54.withOpacity(0.7),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.circle_rounded, color: Colors.white, size: 15),
                    Icon(Icons.circle_outlined, color: Colors.white, size: 15),
                    Icon(Icons.circle_outlined, color: Colors.white, size: 15),
                  ],
                ),

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 50),
                      Text(
                        "Let's personalize your",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "experience",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 120),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon1.png'),
                            SizedBox(width: 10),
                            Text(
                              'Sleep meditations',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon2.png'),
                            SizedBox(width: 10),
                            Text(
                              'Calming a busy mind',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon3.png'),
                            SizedBox(width: 10),
                            Text(
                              'Improve performance',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon4.png'),
                            SizedBox(width: 10),
                            Text(
                              'Increase happiness',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon5.png'),
                            SizedBox(width: 10),
                            Text(
                              'Reduce stress or anxiety',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon6.png'),
                            SizedBox(width: 10),
                            Text(
                              'Create a healthy habit',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white24,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0), // Set border radius
                          ),
                        ),
                        padding: EdgeInsets.all(15.0), // Add padding
                        child: Row(
                          mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
                          children: [
                            Image.asset('assets/Icon7.png'),
                            SizedBox(width: 10),
                            Text(
                              'Help my kids sleep',
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    margin: const EdgeInsets.only(top: 730),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff531DAB),
                        padding: EdgeInsets.all(6.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: () {

                      },
                      child: Text('Continue',
                          style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)
                      )
                    ),
                  ),
                ),
              ]
          )
      ),
    );
  }
}