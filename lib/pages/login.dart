import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:login_ui/components/SquareTile.dart';
import '../components/my_animated_button.dart';
import '../components/my_textfield.dart';

class LoginPage extends StatelessWidget{
  
  LoginPage({super.key});

  final UsernameController = TextEditingController();
  final PasswordController = TextEditingController();

  void SignUserIn(){}
  final double PADDING_FROM_BORDERS  = 20; 

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
        // logo
        const Center(child: Icon(Icons.lock, size: 100, color: Colors.white70,)),
        
        const SizedBox(height: 50),

        // welcome back
        const Text(
          'Welcome back! we missed you!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 25),

        // username text field
        Padding(
          padding: EdgeInsets.symmetric(horizontal: PADDING_FROM_BORDERS),
          child: my_textfield(
            controller:UsernameController,
            obscureText: false, 
            hintText: 'username'),
        ),

        const SizedBox(height: 25),
        
        // password
        Padding(
          padding: EdgeInsets.symmetric(horizontal: PADDING_FROM_BORDERS),
          child: my_textfield(
            controller: PasswordController,
            obscureText: true,
            hintText: 'password',
          ),
        ),

        const SizedBox(height:7),

        // forgot password
        Padding(
          padding: EdgeInsets.only(right: PADDING_FROM_BORDERS),
          child: Row(mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text('Forgot password?',style: TextStyle(color: Colors.white70),),
            ],
          ),
        ),

        const SizedBox(height: 10),

        // signin
        my_animated_button(text:'SIGN IN', 
          onPress: SignUserIn, 
          animatedOn: AnimatedOn.onHover
        ),

        const SizedBox(height: 10,),

        // or continue with
       Padding(
         padding: EdgeInsets.symmetric(horizontal:PADDING_FROM_BORDERS),
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
       ), 
       
      const SizedBox(height:10),

      //continue with google or Apple
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Google
          SquareTile(path: 'lib/logos/google.png'),

          const SizedBox(width: 20,),

          //Apple
          SquareTile(path: 'lib/logos/apple.png')
        ],)

        // not a member? register

      ],),
    );
  }
}