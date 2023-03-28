import 'package:flutter/material.dart' ;

class or_continue_with_div extends StatelessWidget{
  final double pad;
  final Color color;
  const or_continue_with_div({super.key, this.pad=0, this.color=Colors.black54});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:pad),
      child: Row(
        children:[
        Expanded(child: 
           Divider(
            thickness: 0.5,
            color: color,
          ),
        ),
    
        Padding(
          padding: EdgeInsets.symmetric(horizontal:15),
          child: Text('or continue with',style: TextStyle(color: color),),
        ),
    
        Expanded(child: 
          Divider(
            thickness: 0.5,
            color: color,
          ),
        )
        ],
      ),
    );
  }
}