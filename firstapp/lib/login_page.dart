import 'package:firstapp/components/my_button.dart';
import 'package:firstapp/components/my_textfield.dart';
import 'package:firstapp/components/square_tile.dart';
import 'package:flutter/material.dart';
//import 'package:lottie/lottie.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // text controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in
  void signUserIn() {}

  // sign with other controller
  void signWithOther() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              // logo
          
              const Icon(
                Icons.login,
                size: 125,
              ),
              
              // Load a Lottie file from your assets
              //Lottie.asset('lib/sources/images/login.json', height: 150),
              const SizedBox(height: 25),

              // welcom text
              const Text('Welcom back\'ve been missed!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),


              // username input
              MyTextField(controller: usernameController, hintText: 'username', obscureText: false),
              const SizedBox(height: 10),

              // password input
              MyTextField(controller: passwordController, hintText: 'password', obscureText: true,),
              const SizedBox(height: 10),

              // forgot password ?
              const Padding(padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Forgot password ?',
                    style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // sing in button
              MyButton(onTap: signUserIn),
              const SizedBox(height: 25),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),),
              
                    // text
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text('Or continue with', style: TextStyle(color: Colors.grey[700]),),
                    ),
                    
                    Expanded(child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),)
                  ],
                ),
              ),
              const SizedBox(height: 25),

              // google + facebook logo
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google
                  SquareTile(imagePath: 'lib/sources/images/google.png'),

                  SizedBox(width: 15,),

                  // facebook
                  SquareTile(imagePath: 'lib/sources/images/fb_icon.png')
                ],
              ),
             

              // not a member? register now
            ],
          ),
        )
      ));
  }
}