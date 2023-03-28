import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:login_ui/components/SquareTile.dart';
import 'package:login_ui/components/or_continue_with_div.dart';
import '../components/my_animated_button.dart';
import '../components/my_textfield.dart';

class LoginPage extends StatelessWidget{
  
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}
  // ignore: non_constant_identifier_names
  static double PADDING_FROM_BORDERS  = 20; 

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        
        // logo
        // const Center(child: Icon(Icons.lock, size: 100, color: Colors.white70,)),
        const SizedBox(height: 10),
        Image.asset('lib/logos/netflix.png', height: 100,),
        
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
            controller:usernameController,
            obscureText: false, 
            hintText: 'username',
            theme: [],
            ),
        ),

        const SizedBox(height: 25),
        
        // password
        Padding(
          padding: EdgeInsets.symmetric(horizontal: PADDING_FROM_BORDERS),
          child: my_textfield(
            controller: passwordController,
            obscureText: true,
            hintText: 'password',
            theme: [],
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
          onPress: signUserIn, 
          animatedOn: AnimatedOn.onHover
        ),

        const SizedBox(height: 10,),

        // or continue with
        or_continue_with_div(pad: PADDING_FROM_BORDERS,), 
       
      const SizedBox(height:10),

      //continue with google or Apple
      Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Google
          SquareTile(path: 'lib/logos/google.png'),

          const SizedBox(width: 20,),

          //Apple
          SquareTile(path: 'lib/logos/apple.png')
        ],),

        const SizedBox(height: 20),

        // not a member? register
        const Text('not a member? Sign up', style: TextStyle(color: Color.fromARGB(255, 49, 169, 169)), )
      ],),
    );
  }
}