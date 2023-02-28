import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signin_up_firebase/pages/home_page.dart';
import 'package:signin_up_firebase/pages/profile/profile_screen.dart';
import 'package:signin_up_firebase/pages/setting.dart';
import 'package:signin_up_firebase/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currrentPage = 0;

  final pages = [
    const HomePage(),
    const ProfileScreen(),
    const HomePage(),
    const ProfileScreen(),
    const SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currrentPage),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: Colors.amberAccent,
        backgroundColor: Colors.white,
        height: 55,
        elevation: 0,
        destinations: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: NavigationDestination(
              icon: SvgPicture.asset(
                'assets/svg/home_icon.svg',
                height: 24,
              ),
              label: '',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svg/search_icon.svg',
                  height: 24,
                ),
                label: ''),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svg/scan_qr.svg',
                  height: 24,
                ),
                label: ''),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svg/user_icon.svg',
                  height: 24,
                ),
                label: ''),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: NavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svg/setting_icon.svg',
                  height: 24,
                ),
                label: ''),
          ),
        ],
        onDestinationSelected: (int indext) {
          setState(() {
            currrentPage = indext;
          });
        },
        selectedIndex: currrentPage,
      ),
    );
  }
}
