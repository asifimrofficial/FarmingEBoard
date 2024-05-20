
import 'package:farming_e_board/src/constants/app_colours.dart';
import 'package:farming_e_board/src/constants/app_images.dart';
import 'package:farming_e_board/src/features/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../utils/form_validations.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 121, left: 29, right: 29),
        child: Center(
          child: Column(
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColours.primaryColour,
                  fontSize: 30,
                ),
              ),
              Text(
                'Login to your account to continue',
                style: TextStyle(
                  // fontWeight: FontWeight.bold,
                  color: AppColours.primaryColour,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(60),
              Form(
                key: AuthController.instance.signFrmKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Email',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Gap(8),
                    Container(
                      height: 50,
                      width: 316,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child:  TextFormField(
                          validator: (value)=>FormValidation.validateEmail(value),
                          controller: AuthController.instance.emailController,
                            style: TextStyle(color: Colors.black),
                            decoration:
                                InputDecoration(border: InputBorder.none)),
                      ),
                    ),
                    Gap(15),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Password',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Gap(8),
                     Container(
                      height: 50,
                      width: 316,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 238, 238, 238),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 12),
                        child: Obx(() =>TextFormField(
                            validator: (value)=>FormValidation.validatePassword(value),
                            controller: AuthController.instance.passwordController,
                            obscureText: AuthController.instance.isAbscure.value,
                            style: TextStyle(color: Colors.black),
                            decoration:
                                InputDecoration(border: InputBorder.none),
                                
                                ),),
                      ),
                    ),
                    Gap(15),
                    Row(
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          decoration: BoxDecoration(
                              color: Color(0xFFE6E1FF),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Gap(5),
                        Text(
                          'Remember me',
                          style:
                              TextStyle(color: Color(0XFFAAA6B9), fontSize: 12),
                        ),
                        Gap(75),
                        Text('Forget Password?')
                      ],
                    )
                  ],
                ),
              ),
              Gap(21),
              InkWell(
                child: Container(
                  height: 50,
                  width: 266,
                  decoration: BoxDecoration(
                      color: AppColours.primaryColour,
                      borderRadius: BorderRadius.circular(6)),
                  child: Center(
                      child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 16),
                  )),
                ),
                  onTap: () {
                  if(!AuthController.instance.signFrmKey.currentState!.validate()){
                      return;
                   }
                    AuthController.instance.signIn();
                  
                  },
              ),
              Gap(18),
              Container(
                height: 50,
                width: 266,
                decoration: BoxDecoration(
                    color:Color(0XFFD6CDFE),
                    borderRadius: BorderRadius.circular(6)),
                child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.googleIcon),
                      Gap(18),
                      Text('SIGN IN WITH GOOGLE',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16),)
                    ],
                    )),
      
              ),
              Gap(16),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text(" You don't have an account yet?  "),
                TextButton(
                  onPressed: ()=>{
                    AuthController.instance.clearControllers(),
                    Get.offAll(()=>const SignupScreen())},
                  child: Text('Sign Up', style: TextStyle(
                    color: AppColours.primaryColour,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
