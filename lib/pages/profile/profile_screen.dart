import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:signin_up_firebase/main.dart';
import 'package:signin_up_firebase/pages/profile/components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          'Profile ',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 22,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
