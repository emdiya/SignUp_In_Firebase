import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Fire'),
      ),
      body: Column(children: [
        Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const LoginPage();
                }));
              },
              child: const Text('Login')),
        )
      ]),
    );
  }
}
