import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  double progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    loadProgress();
  }

  Future<void> loadProgress() async {
    const oneSec = Duration(seconds: 1);
    for (int i = 0; i < 100; i++) {
      await Future.delayed(oneSec);
      if (mounted) {
        setState(() {
          progressValue += 0.3;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/SplashBg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children:[
                Center(
                  child: Container(
                      child: Image.asset('assets/Logo.png'),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/Logo.png'),
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                ),
                const Text(
                    'Try bedtime stories, sleep sounds & \n meditations to help you fall alseep fast.',
                    style: TextStyle(fontSize: 10, color: Colors.white)
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 40),
                  width: 200,
                  child:
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      colors: [Color(0xff42098F), Color(0xffB53FFE), Color(0xff24076A)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(bounds),
                    child: LinearProgressIndicator(
                      backgroundColor: Color(0xff160045),
                      value: progressValue,
                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
                ),
              ]
          ),
        ],
      ),
    );
  }
}