
import 'package:farming_e_board/src/features/view/category_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:thaix_network_app/main2.dart';
// import 'package:thaix_network_app/src/features/auth/login/login_view.dart';
// import '../../home/home_page.dart';
// import '../../profile/view/profile_screen.dart';

class AuthController extends GetxController{
  static AuthController instance = Get.find();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isLoading = false.obs;
  RxBool isAbscure = true.obs;
  late Rx<User?> _user;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  GlobalKey<FormState> signFrmKey = GlobalKey<FormState>();
  GlobalKey<FormState> signupFrmKey = GlobalKey<FormState>();
  

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(_auth.currentUser);
    _user.bindStream(_auth.authStateChanges());
    ever(_user, _initialScreen);

  }
  void registerUser() async{
 try {
    isLoading(true);
    await _auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value)=>isLoading(false));
 
 } catch (e) {
   Get.snackbar('About User', 'User Message',
   snackPosition: SnackPosition.BOTTOM, 
    backgroundColor: Colors.redAccent,
   titleText: const Text('Error', style: TextStyle(color: Colors.white)),
    messageText:  Text(e.toString(), style: const TextStyle(color: Colors.white)),
   );
 }
}
void signIn() async{
  try {
    isLoading(true);
      await _auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value) => isLoading(false));
  } catch (e) {
    Get.snackbar('About User', 'User Message',
    snackPosition: SnackPosition.BOTTOM, 
     backgroundColor: Colors.redAccent,
    titleText: const Text('Error', style: TextStyle(color: Colors.white)),
     messageText:  Text(e.toString(), style: const TextStyle(color: Colors.white)),
    );
  }
}
  void _initialScreen(User? user){
    if(user == null){
      // Get.showSnackbar(
      //   GetSnackBar(
      //     title: 'User is null',
      //     message: 'User is null'),
      //     duration: const Duration(seconds: 2)
      // );
      // Get.offAllNamed('/login');
      // Get.offAll(()=>const LoginPage());
      if (kDebugMode) {
        print('User is null');
      }
    }else{
      // Get.showSnackbar(
      //   GetSnackBar(
      //     title: 'Logged in successfully',
      //     message: 'Logged in successfully'),
         
      // );
      Get.offAll(()=>CatergoryScreen());
    }
  }
void signOut() async{
  await _auth.signOut();
}
  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

void changeVisiblity(){
  isAbscure(!isAbscure.value);
}
void clearControllers(){
  emailController.clear();
  passwordController.clear();
}


}