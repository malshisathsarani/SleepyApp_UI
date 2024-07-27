import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sleepy/screens/Settings/setting_card.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
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
          children: [

            //Arrow Back Icon
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white30, // Set border color
                    width: 2.0, // Set border width
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0), // Set border radius
                  ),
                ),
                child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded, color: Colors.white30,size: 15,)),
              ),
            ),

            //Image
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image(
                  image:  AssetImage('assets/Settings/Paywall.png'),

                ),
              ],
            ),

            SizedBox(height: 50,),

            //Cards
            Column(
              children: [
                SettingCard(text: 'Rate Us', icon: Icons.star_rounded),
                SettingCard(text: 'Invite Friends', icon: Icons.person_add_alt_outlined),
                SettingCard(text: 'About Us', icon: Icons.account_balance_outlined),
                SettingCard(text: 'Support / Help', icon: Icons.help_outline),
                SettingCard(text: 'Terms & Conditions', icon: Icons.health_and_safety),
                SettingCard(text: 'Privacy Policy', icon: Icons.privacy_tip_rounded),
              ],
            ),

            //Social Media Icons
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 40),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0), // Set border radius
                            ),
                          ),
                          child: IconButton(onPressed: (){}, icon: Image.asset('assets/Settings/facebook.png'), color: Colors.white),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white30, // Set border color
                            width: 2.0, // Set border width
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0), // Set border radius
                          ),
                        ),
                        child: IconButton(onPressed: (){}, icon: Image.asset('assets/Settings/youtube.png'), color: Colors.white),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white30, // Set border color
                            width: 2.0, // Set border width
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0), // Set border radius
                          ),
                        ),
                        child: IconButton(onPressed: (){}, icon: Image.asset('assets/Settings/twitch.png'), color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )


        ]
      )
      );
  }
}
