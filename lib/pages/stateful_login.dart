import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:login_ui/components/SquareTile.dart';
import 'package:login_ui/components/or_continue_with_div.dart';
import '../components/my_animated_button.dart';
import '../components/my_textfield.dart';

class ThemedLoginPage extends StatefulWidget{
  
  String? theme;

  ThemedLoginPage({super.key});
  
  @override
  // ignore: library_private_types_in_public_api
  _ThemedLoginPageState createState() {
    return _ThemedLoginPageState();
  }
}

class _ThemedLoginPageState extends State<ThemedLoginPage>{
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn(){}
  // ignore: non_constant_identifier_names
  static double PADDING_FROM_BORDERS  = 20;

  bool _isDark=true; 
  Icon _themeIcon = Icon(Icons.mode_night_rounded, color: Colors.black,);
  Color _primaryColor1 =Colors.black;
  Color _primaryColor2 = Colors.white;
  Color _secondaryColor1 = Colors.white10;
  Color _accentColor = Colors.white70;
  Color _focusAccentColor = Colors.white;

  _ThemedLoginPageState();

  @override
  void initState(){
    _isDark = true;
    super.initState();
  }

  void _changeTheme(){
    setState(() {
      _isDark = !_isDark;
      switchColors(_isDark);
    });   
  }

  void switchColors(bool isDark){
    setState(() {
      if(isDark){
        _primaryColor1 =Colors.black;
        _primaryColor2 = Colors.white;
        _secondaryColor1 = Colors.white10;
        _accentColor = Colors.white70;
        _focusAccentColor = Colors.white;
        _themeIcon = const Icon(Icons.mode_night, color: Colors.black,);
      }else{
        _primaryColor1 =Colors.white;
        _primaryColor2 = Colors.black;
        _secondaryColor1 = Colors.black12;
        _accentColor = Colors.grey;
        _focusAccentColor = Colors.black;
        _themeIcon = const Icon(Icons.wb_sunny_rounded, color: Colors.white);
      }
    });
  }

  
  @override 
  Widget build(BuildContext context){
    late String apple_logo;
    if (_isDark){
      apple_logo = 'lib/logos/apple.png';
    } else{
      apple_logo = 'lib/logos/whiteapple.png';
      if (kDebugMode) {
        print('white');
      }
    }

    return Scaffold(
      backgroundColor: _primaryColor1,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right:PADDING_FROM_BORDERS),
            child: Row( mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(onPressed: ()=> _changeTheme(),
                    backgroundColor: _primaryColor2,
                    splashColor: _primaryColor2,
                    child: _themeIcon,
                  ),
              ],
            ),
          ),

          Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
            // logo
            // const Center(child: Icon(Icons.lock, size: 100, color: Colors.white70,)),
            const SizedBox(height: 10),
            Image.asset('lib/logos/netflix.png', height: 100,),
            
            // welcome back
            Text(
              'Welcome back! we missed you!',
              style: TextStyle(
                color: _primaryColor2,
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
                theme: [
                  _secondaryColor1,
                  _primaryColor2,
                  _accentColor,
                  _focusAccentColor
                  ,]
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
                theme:[
                   _secondaryColor1,
                  _primaryColor2,
                  _accentColor,
                  _focusAccentColor
                  ,]
              ),
            ),

            const SizedBox(height:7),

            // forgot password
            Padding(
              padding: EdgeInsets.only(right: PADDING_FROM_BORDERS),
              child: Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot password?',style: TextStyle(color: _primaryColor2),),
                ],
              ),
            ),

            const SizedBox(height: 10),

            // signin
            my_animated_button(text:'SIGN IN', 
              onPress: signUserIn, 
              animatedOn: AnimatedOn.onHover,
              textColor: _primaryColor2,
              backgroundColor: _primaryColor1,
              selectedBackgroundColor: _primaryColor2,
              selectedTextColor: _primaryColor1,
              borderColor: _primaryColor2,
            ),

            const SizedBox(height: 10,),

            // or continue with
            or_continue_with_div(pad: PADDING_FROM_BORDERS,  color:_accentColor), 
           
          const SizedBox(height:10),

          //continue with google or Apple
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Google
              SquareTile(path: 'lib/logos/google.png', backgroundColor: _primaryColor2,),

              const SizedBox(width: 20,),

              //Apple
              SquareTile(path: apple_logo, backgroundColor: _primaryColor2,)
            ],),

            const SizedBox(height: 20),

            // not a member? register
            const Text('not a member? Sign up', style: TextStyle(color: Color.fromARGB(255, 49, 169, 169)), )
          ],),
        ],
      ),
    );
  }
}