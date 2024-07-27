import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sleepy/screens/Paywall/paywall_card.dart';
import 'package:sleepy/screens/Paywall/paywall_discount_card.dart';

class paywall extends StatefulWidget {


  const paywall({super.key});

  @override
  State<paywall> createState() => _paywallState();
}

class _paywallState extends State<paywall> {

  String? selectedCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/SplashBg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //icon
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white30, // Set border color
                      width: 2.0, // Set border width
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0), // Set border radius
                    ),
                  ),
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.close_rounded, color: Colors.white30,size: 15,)),
                ),
              ),

              //topic
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Row(
                  children: [
                    Text(
                      'Get the \nFull experience',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              //trils
              Column(
                children: [
                  PaywallCard(text: '7 Days free trail'),
                  PaywallCard(text: 'Experience our full library'),
                  PaywallCard(text: '200+ soundscapes'),
                  PaywallCard(text: '60+ meditations'),
                  PaywallCard(text: '20+ sleep sounds'),
                  PaywallCard(text: 'Mix your own sleep sounds'),
                  PaywallCard(text: 'No ads, enjoy free'),

                ],
              ),

              //discount cards
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    PaywallDiscountCard(
                      text1: '\$9.99 ',
                      text2: '/Monthly',
                      text3: 'Billed monthly',
                      showLabel: false,
                      isSelected: selectedCard == 'monthly',
                      onTap: () {
                        setState(() {
                          selectedCard = 'monthly';
                        });
                      },
                    ),
                    SizedBox(height: 10,),
                    PaywallDiscountCard(
                      text1: '\$ 79.99 ',
                      text2: '/ Annual',
                      text3: 'Billed annually',
                      showLabel: true,
                      isSelected: selectedCard == 'annual',
                      onTap: () {
                        setState(() {
                          selectedCard = 'annual';
                        });
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50,),
              //button
              Column(

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(

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
                          child: Text('Start with free trail',
                              style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold)
                          )
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Privacy Policy & Terms of Use',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: Colors.white,)
                    ],
                  )
                ],
              ),

            ],
          )
        ]
      )
    );
  }

}
