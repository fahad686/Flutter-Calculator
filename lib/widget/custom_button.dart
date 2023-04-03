import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color color;
  // create onpress variable for enabling to make clickable
  final VoidCallback onpress;

  const CustomButton(
      {super.key,
      required this.title,
      required this.color,
      required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, //New

                    offset: Offset(2, 2))
              ],
            ),
            child: Center(
              child: Text(
                title,
                // ignore: prefer_const_constructors
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
