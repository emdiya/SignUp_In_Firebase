import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCon = Get.put(AuthController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome Page '),
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
          )
        ],
      ),
    );
  }
}
