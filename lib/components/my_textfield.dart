import 'package:flutter/material.dart';

// ignore: camel_case_types
class my_textfield extends StatelessWidget{
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;
  
  const my_textfield({
    super.key, 
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    TextField obj = TextField(
          controller: controller,
          obscureText: obscureText,
          
          // Style and formatting:
          decoration: InputDecoration(
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
        );

    return obj;
  }

}