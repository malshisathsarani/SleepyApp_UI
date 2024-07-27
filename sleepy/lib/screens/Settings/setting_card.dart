import 'package:flutter/material.dart';

class SettingCard extends StatefulWidget {
   final String text;
  final IconData icon;

  const SettingCard({super.key, required this.text, required this.icon});

  @override
  State<SettingCard> createState() => _SettingCardState();
}

class _SettingCardState extends State<SettingCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 10, right: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(widget.icon, color: Colors.white,size: 35,),
                  SizedBox(width: 10,),
                  Text(
                    widget.text, style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),
              Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white,size: 45,)
            ],
          ),
        )
      ],
    );
  }
}
