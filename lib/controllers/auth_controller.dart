import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_up_firebase/main.dart';

import '../pages/login_page.dart';

class AuthController extends GetxController {
  final isRegisterloading = false.obs;
  final isSignInLoading = false.obs;

  Future<void> signUpUser({String? email, String? password}) async {
    isRegisterloading(true);
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .then((respone) {
        if (respone.credential.hashCode == 2011) {
          debugPrint(
              '------------------ hashcode - ${respone.credential.hashCode.toString()}');
          Get.snackbar('Sucessfully!', 'You sign up sucessfully',
              colorText: Colors.white, backgroundColor: Colors.green);
          Get.offAll(() => const LoginPage());
        }
      });
    } catch (message) {
      Get.snackbar('Error', message.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    isRegisterloading(false);
  }

  Future<void> signInUser({String? email, String? password}) async {
    isSignInLoading(true);
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((respone) {
        if (respone.credential.hashCode == 2011) {
          Get.snackbar(
            'Sucessfully!',
            'You sign in sucessfully',
            colorText: Colors.white,
            backgroundColor: Colors.green,
          );
          Get.offAll(() => const RootPage());
        }
      });
    } catch (message) {
      Get.snackbar('Error', message.toString(),
          colorText: Colors.white, backgroundColor: Colors.red);
    }
    isSignInLoading(false);
  }

  //checkUser
  checkUser() {
    if (FirebaseAuth.instance.currentUser?.uid == null) {
      Get.offAll(() => const LoginPage());
    } else {
      Get.offAll(() => const RootPage());
    }
  }

  //Signout
  signOutUser() async {
    final auth = FirebaseAuth.instance;
    await auth.signOut().then(
          (value) => Get.offAll(
            () => const LoginPage(),
          ),
        );
  }
}
