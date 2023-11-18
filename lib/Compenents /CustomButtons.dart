import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  const CustomizedButton({super.key, required this.title, this.onPressed, required this.width, required this.ButtonColor, required this.height, required this.style, required this.outlined,});
  final String title; 
  final double width; 
  final double height;
  final Color ButtonColor;
  final void Function()? onPressed;
  final TextStyle style; 
  final bool outlined;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor,
          elevation: 0.0, 
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
           
            side: outlined ? BorderSide(width: 2, color: Color(0xFFE0DEF7)) : BorderSide.none,
            borderRadius: BorderRadius.circular(6),
          ),
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
            title,
            textAlign: TextAlign.center,
            style: style
            ),

          ],
        )
        ),
    );
  }
}


