import 'package:farming_e_board/src/screens/splash_screen_1.dart';
import 'package:farming_e_board/src/screens/splash_screen_2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'firebase_options.dart';
import 'src/features/controller/auth_controller.dart';
import 'src/features/view/login_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo', 
      home: SplashScreen1(),
    );
  }
}

