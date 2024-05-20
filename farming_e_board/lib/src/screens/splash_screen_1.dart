import 'package:farming_e_board/src/constants/app_images.dart';
import 'package:farming_e_board/src/screens/splash_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(()=>SplashScreen2());
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(AppImages.appLogo)
      ),
    );
  }
}