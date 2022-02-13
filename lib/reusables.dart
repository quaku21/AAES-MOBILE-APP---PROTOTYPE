import 'package:flutter/material.dart';

class Containercard extends StatelessWidget {
  late String label;
  late IconData icon;
  late double? fontsize;
  late Color cardcolor;
  Containercard(
      {Key? key,
      required this.label,
      required this.icon,
      this.fontsize = 18,
      required this.cardcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 150,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 0.05,
            blurRadius: 8,
            color: Colors.grey,
          ),
        ],
        color: cardcolor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: fontsize,
            ),
          )
        ],
      ),
    );
  }
}
