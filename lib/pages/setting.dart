import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_up_firebase/main.dart';

import '../controllers/auth_controller.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCon = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.offAll(() => const RootPage());
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black38,
          ),
        ),
        title: const Text(
          'Setting',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 22,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                authCon.signOutUser();
              },
              child: const Text('Sign Out'),
            ),
          ),
        ],
      ),
    );
  }
}
