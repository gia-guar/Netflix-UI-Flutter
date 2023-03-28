import 'package:flutter/material.dart' ;

class or_continue_with_div extends StatelessWidget{
  final double pad;

  const or_continue_with_div({super.key, this.pad=0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:pad),
      child: Row(
        children: const [
        Expanded(child: 
          Divider(
            thickness: 0.5,
            color: Colors.white70,
          ),
        ),
    
        Padding(
          padding: EdgeInsets.symmetric(horizontal:15),
          child: Text('or continue with',style: TextStyle(color: Colors.white70),),
        ),
    
        Expanded(child: 
          Divider(
            thickness: 0.5,
            color: Colors.white70,
          ),
        )
        ],
      ),
    );
  }
}