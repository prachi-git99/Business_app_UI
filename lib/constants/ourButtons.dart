import 'package:blackcoffer/constants/colors.dart';
import 'package:flutter/material.dart';


bool _pressed = false;

Widget OurButton(size,text,){
  return GestureDetector(
    onTap: () {
      // setState(() {
      //   _pressed = !_pressed;
      // });
    },
    child: Container(
      width: size.width/3,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: _pressed ? darkBlue : white,

      ),
      child: Center(child: Text(text)),
    ),
  );
}