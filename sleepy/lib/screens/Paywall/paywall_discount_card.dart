import 'package:flutter/material.dart';

class PaywallDiscountCard extends StatefulWidget {
  final String text1;
  final String text2;
  final String text3;
  final bool showLabel;
  final bool isSelected;
  final VoidCallback onTap;


  const PaywallDiscountCard({super.key, required this.text1, required this.text2, required this.text3, required this.showLabel, required this.isSelected, required this.onTap});

  @override
  State<PaywallDiscountCard> createState() => _PaywallDiscountCardState();
}

class _PaywallDiscountCardState extends State<PaywallDiscountCard> {

  bool _isPressed = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: widget.isSelected ? Color(0xff42098F): Colors.white30, // Set border color
                width: 2.0, // Set border width
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0), // Set border radius
              ),
            ),
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: widget.onTap,
                  icon: widget.isSelected ? Image.asset('assets/check-icon.png') : Icon(Icons.circle_outlined),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: widget.text1,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                          ),
                          TextSpan(
                            text: widget.text2,
                            style: TextStyle(fontSize: 20, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      widget.text3,
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ),
          if (widget.showLabel)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.all(5.0),
                color: Color(0xff42098F),

                child: Text(
                  'Save 33%',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}