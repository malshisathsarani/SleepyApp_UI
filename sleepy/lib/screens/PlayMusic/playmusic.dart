import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sleepy/screens/PlayMusic/play_icons.dart';

class Playmusic extends StatefulWidget {
  const Playmusic({super.key});

  @override
  State<Playmusic> createState() => _PlaymusicState();
}

class _PlaymusicState extends State<Playmusic> {
  int _selectedIndex = -1;
  final ScrollController _scrollController = ScrollController();

  void _scrollToSelectedIndex(int index) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double imageWidth = 100; // Fixed size for all images
    final double selectedImageWidth = 300; // Size for selected image
    final double targetScrollOffset = (index * imageWidth) - (screenWidth / 2) + (selectedImageWidth / 2);

    _scrollController.animateTo(
      targetScrollOffset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 45.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0), // Set border radius
                            ),
                          ),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down_sharp ,color: Colors.white30,size: 30,)),
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      child: Text(
                        'RELAXING ZEN MUSIC',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 65.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0), // Set border radius
                            ),
                          ),
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever, color: Colors.white30,size: 30,)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Music Image
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                child: Row(
                  children: [
                    SizedBox(width: 25), // Space before the first image
                    ...List.generate(4, (index) {
                      return Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedIndex = index;
                              });
                              _scrollToSelectedIndex(index);
                            },
                            child: Image(
                              image: AssetImage('assets/PlayMusic/img${index + 1}.png'),
                              width: _selectedIndex == index ? 200 : 100,
                              height: _selectedIndex == index ? 200 : 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          if (index < 3) SizedBox(width: 25), // Space between images
                        ],
                      );
                    }),
                    SizedBox(width: 25),
                  ],
                ),
              ),

              // Music Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PlayIcons(musicIcon: Icons.shuffle, iconSize: 25, buttonColor: Colors.transparent),
                  PlayIcons(musicIcon: Icons.skip_previous, iconSize: 25,  buttonColor: Colors.transparent),
                  PlayIcons(musicIcon: Icons.play_arrow,  iconSize: 60,  buttonColor: Color(0xff531DAB)),
                  PlayIcons(musicIcon: Icons.skip_next, iconSize: 25,  buttonColor: Colors.transparent),
                  PlayIcons(musicIcon: Icons.repeat,  iconSize: 25,  buttonColor: Colors.transparent),
                ],
              ),

              // Music Time
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [

                    Icon(Icons.queue_music, color: Colors.white, size: 30),

                    Text(
                      '12 Songs',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 195),
                    Text(
                      '1 hr 32 min',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
              ),

              // Music Slider
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xff09001F),
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0), // Set border radius
                            ),
                          ),

                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/PlayMusic/img1.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 20),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lantern Festival',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Gloria',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0), // Set border radius
                            ),
                          ),

                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/PlayMusic/img2.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 20),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lantern Festival',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Gloria',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0), // Set border radius
                            ),
                          ),

                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/PlayMusic/img3.png',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 20),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lantern Festival',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Gloria',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xff09001F),
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0), // Set border radius
                            ),
                          ),

                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/PlayMusic/img4.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 20),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lantern Festival',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Gloria',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white30, // Set border color
                              width: 2.0, // Set border width
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0), // Set border radius
                            ),
                          ),

                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/PlayMusic/img1.png',
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(width: 20),

                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Lantern Festival',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Gloria',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}