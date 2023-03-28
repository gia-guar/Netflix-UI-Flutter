import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';


// ignore: camel_case_types, must_be_immutable
class my_animated_button extends StatelessWidget{  
  String text;
  Color textColor, selectedTextColor;
  Color backgroundColor, selectedBackgroundColor;
  Color borderColor;
  AnimatedOn animatedOn;
  void Function() onPress;

  my_animated_button({super.key, 
    required this.text, 
    required this.onPress,
    this.animatedOn= AnimatedOn.onTap,
    this.textColor =              Colors.white,
    this.selectedTextColor =      Colors.black,
    this.backgroundColor=         Colors.black,
    this.selectedBackgroundColor= Colors.white,
    this.borderColor=             Colors.white,
    });
  
  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onPress: onPress,
      animatedOn: animatedOn,
      width: 200,
      text: text,
      selectedTextColor: selectedTextColor,
      transitionType: TransitionType.CENTER_ROUNDER,
      textStyle: TextStyle(
        fontSize: 20,
        letterSpacing: 2,
        color: textColor,
        fontWeight: FontWeight.w300),
      borderColor: borderColor,
      borderRadius: 50,
      borderWidth: 2,
      selectedBackgroundColor: selectedBackgroundColor,
      backgroundColor: backgroundColor,
    );
  }
}

