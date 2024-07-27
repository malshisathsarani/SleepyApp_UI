import 'package:flutter/material.dart';

class PaywallCard extends StatelessWidget {

  final String text;

  const PaywallCard(
      {super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 15),
      child: Row(
        mainAxisSize: MainAxisSize.max, // Make the Row take up all available horizontal space
        children: [
          Image.asset('assets/paywall-Icon1.png'),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
