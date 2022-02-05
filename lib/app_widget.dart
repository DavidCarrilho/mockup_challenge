import 'package:flutter/material.dart';

import 'src/pages/pages.dart';



class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(),
      routes: {
        '/': (context) => const LoginUnderControlPage(),
        '/tinder': (context) => const TinderPage(),
        '/under_control': (context) => const LoginUnderControlPage(),
      },
    );
  }
}
