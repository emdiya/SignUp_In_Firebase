import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_profilepc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Center(
          child: ProfilePic(),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xfff5f6f9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/icon/bank.svg',
                  height: 28,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
