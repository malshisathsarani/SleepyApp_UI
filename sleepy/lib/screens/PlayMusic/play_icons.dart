import 'package:flutter/material.dart';

class PlayIcons extends StatefulWidget {
  final IconData musicIcon;
  final double iconSize;
  final Color buttonColor;

  const PlayIcons({super.key, required this.musicIcon,  required this.iconSize, required this.buttonColor});

  @override
  State<PlayIcons> createState() => _PlayIconsState();
}

class _PlayIconsState extends State<PlayIcons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(
          color: widget.buttonColor, // Set background color
          border: Border.all(
            color: Colors.white30,
            width: 1,// Set border color

          ),
          borderRadius: BorderRadius.all(
            Radius.circular(50.0), // Set border radius
          ),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(widget.musicIcon, color: Colors.white, size: widget.iconSize),
        ),
      ),
    );
  }
}