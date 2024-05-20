import 'package:farming_e_board/src/constants/app_colours.dart';
import 'package:farming_e_board/src/constants/app_images.dart';
import 'package:farming_e_board/src/features/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:120.0, left: 10, right: 10),
          child: Column(children: [
            Center(
            child: Image.asset(AppImages.splashImage,)
          ),
          Gap(77),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("Find Your ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("FARMING EQUIPMENTS",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: AppColours.primaryColour),),
            Text("Here!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ],),
          Text("Explore all the most advanced and demanding farming equipments here."),
          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
        ),
        onPressed: () {
         Get.to(()=>LoginScreen());
        },
        child: const Icon(Icons.arrow_forward,color: Colors.white,),
        backgroundColor: AppColours.primaryColour,
      )
    );
  }
}