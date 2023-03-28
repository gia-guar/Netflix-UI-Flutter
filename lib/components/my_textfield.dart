import 'package:flutter/material.dart';

// ignore: camel_case_types
class my_textfield extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
<<<<<<< HEAD
  
  const my_textfield({
=======
  late Color backgroundColor;
  late Color textColor;
  late Color borderColor;
  late Color focusedColor;

  
  my_textfield({
>>>>>>> 88dceb44749fa41caeb0445827195dd87f4a010b
    super.key, 
    required this.controller,
    required this.hintText,
    required this.obscureText,
<<<<<<< HEAD
    });
=======
    required theme
    }){
      backgroundColor = theme[0];
      textColor = theme[1];
      borderColor = theme[2];
      focusedColor = theme[3];
    }
>>>>>>> 88dceb44749fa41caeb0445827195dd87f4a010b

  @override
  Widget build(BuildContext context) {
    TextField obj = TextField(
          controller: controller,
          obscureText: obscureText,
          
          // Style and formatting:
          decoration: InputDecoration(
<<<<<<< HEAD
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white60, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 4),
              borderRadius: BorderRadius.all(Radius.circular(50))
            ),
            fillColor: Colors.white10,
            filled: true,
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.white70),
          ),

          style: const TextStyle(color: Colors.white),
=======
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
>>>>>>> 88dceb44749fa41caeb0445827195dd87f4a010b
        );

    return obj;
  }

}