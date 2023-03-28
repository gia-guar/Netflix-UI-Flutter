
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget{
  String path;
  SquareTile({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        ),

      
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(path, height: 50,),
      ),
    );
  }
}