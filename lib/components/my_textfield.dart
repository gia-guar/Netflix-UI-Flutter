import 'package:flutter/material.dart';

// ignore: camel_case_types
class my_textfield extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  late Color backgroundColor;
  late Color textColor;
  late Color borderColor;
  late Color focusedColor;

  
  my_textfield({
    super.key, 
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required theme
    }){
      backgroundColor = theme[0];
      textColor = theme[1];
      borderColor = theme[2];
      focusedColor = theme[3];
    }

  @override
  Widget build(BuildContext context) {
    TextField obj = TextField(
          controller: controller,
          obscureText: obscureText,
          
          // Style and formatting:
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 2),
              borderRadius:const BorderRadius.all(Radius.circular(50)),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: textColor, width: 4),
              borderRadius: const BorderRadius.all(Radius.circular(50))
            ),

            fillColor: backgroundColor,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(color: borderColor),
          ),

          style: TextStyle(color: textColor),
        );

    return obj;
  }

}