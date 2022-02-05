import 'package:flutter/material.dart';

import '../core/constant.dart';

class LoginUnderControlPage extends StatelessWidget {
  const LoginUnderControlPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Material(
      child: GestureDetector(
        onTap: () => Navigator.of(context).pushReplacementNamed('/tinder'),
        child: Container(
          color: Colors.black,
          height: double.infinity,
          width: double.infinity,
          child: Visibility(
            visible: isPortrait,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TopUnderControl(isPortrait: isPortrait),
                const ButtonWidget(),
              ],
            ),
            replacement: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopUnderControl(isPortrait: isPortrait),
                const SizedBox(width: 10, height: 10),
                const ButtonWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopUnderControl extends StatelessWidget {
  final bool isPortrait;

  const TopUnderControl({
    Key? key,
    required this.isPortrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _mainAxisAlignment =
        (isPortrait) ? MainAxisAlignment.center : MainAxisAlignment.start;
    return Expanded(
      flex: 3,
      child: Column(
        mainAxisAlignment: _mainAxisAlignment,
        children: [
          const SizedBox(height: 10.0),
          Image.asset(
            "assets/images/logo_under_control.png",
            scale: 0.1,
            width: 200.0,
            height: 200.0,
          ),
          const Text(
            'Get Your Money',
            style: styleTextTitleUnderControl,
          ),
          const Text(
            'Under Control',
            style: styleTextTitleUnderControl,
          ),
          const SizedBox(height: 14.0),
          const Text(
            'Manage your expenses.',
            style: styleTextSubtitle,
          ),
          const Text(
            'Seamlessly.',
            style: styleTextSubtitle,
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF5e5ce5),
              ),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20.0),
                child: const Center(
                  child: Text(
                    'Sign Up with Email ID',
                    style: styleTextButton,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: colorWhite),
              onPressed: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo_google.png',
                      width: 24.0,
                      height: 24.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Text(
                      'Sign Up with Google',
                      style: styleTextGoogleButton,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
              width: 50,
            ),
            SizedBox(
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  Text(
                    'Already have an account?',
                    style: styleTexthelpUnderControl,
                  ),
                  SizedBox(width: 6.0),
                  Text(
                    'Sign In',
                    style: styleTextUnderLineUnderControl,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
