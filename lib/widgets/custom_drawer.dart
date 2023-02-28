import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:signin_up_firebase/main.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: const Text("Diya"),
          accountEmail: const Text("diya.dev@flutter.com"),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://img.seadn.io/files/bbefba536cb4156606a4e01953bfecab.png?fit=max&w=1000',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://media.istockphoto.com/id/1185747322/photo/blue-mesh-gradient-blurred-motion-abstract-background.jpg?s=612x612&w=0&k=20&c=5S8NBjBQCjL_5zMenfcRrx5X9m6AqJLwYbdTprLJPiA=',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: <Widget>[
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/favarite.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Favorite'),
                onTap: (() => debugPrint('fav')),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/friend_icon.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Friend'),
                onTap: (() => debugPrint('fri')),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/share_icon.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Share'),
                onTap: (() => debugPrint('share')),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/request_icon.svg',
                  height: 28,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Report'),
                onTap: (() => debugPrint('report')),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/policy_icon.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Policy'),
                onTap: (() => debugPrint('policy')),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/ativities.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Activity'),
                onTap: (() => debugPrint('activity')),
              ),
              const SizedBox(
                height: 40,
              ),
              FloatingActionButton(
                elevation: 0.0,
                backgroundColor: Colors.transparent,
                onPressed: () {
                  Get.offAll(() => const RootPage());
                },
                child: SvgPicture.asset(
                  'assets/svg/quite_icon.svg',
                  height: 30,
                  width: 30,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 15),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/feedback_icon.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Help Feedback'),
                onTap: (() => debugPrint('exit')),
              ),
              ListTile(
                leading: SvgPicture.asset(
                  'assets/svg/exit_icon.svg',
                  height: 24,
                  width: 24,
                  fit: BoxFit.cover,
                ),
                title: const Text('Exit'),
                onTap: (() => debugPrint('exit')),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
