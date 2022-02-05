import 'package:flutter/material.dart';

import '../core/constant.dart';


class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    const Icon _iconArrowBack = Icon(
      Icons.arrow_back_ios,
      size: 25.0,
      color: colorWhite,
    );

    return Material(
      child: GestureDetector(
        onTap: () =>
            Navigator.of(context).pushReplacementNamed('/under_control'),
        child: Container(
          padding: const EdgeInsets.all(32.0),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(backgroundColorLoginScreenTinder),
                Color(backgroundColorLoginScreenTinderEnd)
              ],
            ),
          ),
          height: double.infinity,
          width: double.infinity,
          child: Visibility(
            visible: isPortrait,
            child: SafeArea(
              child: Stack(
                children: [
                  _iconArrowBack,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TopScreenTinder(isPortrait: isPortrait),
                      BottomScreenTinder(isPortrait: isPortrait),
                    ],
                  ),
                ],
              ),
            ),
            replacement: SafeArea(
              child: Stack(
                children: [
                  _iconArrowBack,
                  Row(
                    children: [
                      TopScreenTinder(isPortrait: isPortrait),
                      const SizedBox(
                        height: 10.0,
                        width: 10.0,
                      ),
                      BottomScreenTinder(isPortrait: isPortrait),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopScreenTinder extends StatelessWidget {
  final bool isPortrait;

  const TopScreenTinder({
    Key? key,
    required this.isPortrait,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MainAxisAlignment mainAxisAlignTop =
        (isPortrait) ? MainAxisAlignment.end : MainAxisAlignment.center;
    return Expanded(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: mainAxisAlignTop,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
              visible: isPortrait,
              child: const Spacer(),
              replacement: const SizedBox(),
            ),
            Image.asset(
              'assets/images/logo_tinder.png',
              scale: 0.4,
              width: 200.0,
              height: isPortrait ? 400.0 : 150.0,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              height: 90.0,
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text:
                      'By tapping Create Account or Sign In, you agree to our\n',
                  style: styleTextDescriotion,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms. ',
                      style: styleTextUnderLineTinder,
                    ),
                    TextSpan(text: 'Learn how we process your data in our '),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: styleTextUnderLineTinder,
                    ),
                    TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Cookies Policy',
                      style: styleTextUnderLineTinder,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomScreenTinder extends StatelessWidget {
  const BottomScreenTinder({
    Key? key,
    required this.isPortrait,
  }) : super(key: key);

  final bool isPortrait;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: (isPortrait) ? 0 : 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ButtonIconLogin(
            image: 'assets/icons/apple.png',
            title: 'SIGN IN WITH APPLE',
          ),
          const SizedBox(
            height: 10.0,
          ),
          const ButtonIconLogin(
            image: 'assets/icons/facebook.png',
            title: 'SIGN IN WITH FACEBOOK',
          ),
          const SizedBox(
            height: 10.0,
          ),
          const ButtonIconLogin(
            image: 'assets/icons/conversation.png',
            title: 'SIGN WITH PHONE NUMBER',
          ),
          const SizedBox(
            height: 10.0,
          ),
          const SizedBox(
            height: 50,
            child: Center(
              child: Text(
                'Trouble Signing In?',
                style: styleTextHelpTinder,
              ),
            ),
          ),
          Visibility(
            visible: isPortrait,
            child: const SizedBox(height: 1.0),
            replacement: const SizedBox(height: 40.0),
          )
        ],
      ),
    );
  }
}

class ButtonIconLogin extends StatelessWidget {
  final String image;
  final String title;

  const ButtonIconLogin({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: colorWhite,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 25.0,
              height: 25.0,
            ),
            const Spacer(),
            Text(
              title,
              style: styleTextTitleTinder,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
