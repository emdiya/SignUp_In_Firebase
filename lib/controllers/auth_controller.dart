import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/login_page.dart';

class AuthController extends GetxController {
  final isRegisterloading = false.obs;

  Future<void> signUpUser({String? email, String? password}) async {
    isRegisterloading(true);
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!)
          .then((respone) {
        if (respone.credential.hashCode != 0) {
          debugPrint(
              '------------------ hashcode - ${respone.credential.hashCode.toString()}');
          Get.snackbar('Sucessfully!', 'You sign up sucessfully');
          Get.offAll(() => const LoginPage());
        }
      });
    } catch (message) {
      Get.snackbar('Error', message.toString(),
          colorText: Colors.white, backgroundColor: Colors.green);
    }
    isRegisterloading(false);
  }
}
