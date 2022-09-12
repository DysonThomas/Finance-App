import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
  final Color bcolor;
  final Icon dispIcon;
  final String amount;
  final String catego;

  const Circles(
      {super.key,
      required this.bcolor,
      required this.dispIcon,
      required this.amount,
      required this.catego});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      child: Container(
        height: 160,
        width: 160,
        decoration: BoxDecoration(
            color: bcolor, borderRadius: BorderRadius.circular(100)
            //more than 50% of width makes circle
            ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dispIcon,
              SizedBox(
                height: 10,
              ),
              Text(
                amount,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Text(catego, style: TextStyle(fontSize: 17))
            ],
          ),
        ),
      ),
    );
  }
}
