import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int cardIndex = 1;
  // final int _scrollIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            icon: SvgPicture.asset(
              'assets/svg/menu_icon.svg',
              height: 24,
            ),
          );
        }),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/svg/notification_icon.svg',
                height: 24,
              ),
            ),
          ),
        ],
        elevation: 0,
        //foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        title: const Center(
            child: Text(
          "ដំណើរកម្សាន្ត",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
      drawer: const DrawerWidget(),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text(
                  'Cards',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Text(
                      'Add New',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
