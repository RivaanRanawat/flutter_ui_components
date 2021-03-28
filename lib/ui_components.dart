library ui_components;

import "package:flutter/material.dart";
import 'package:ui_components/login_screen_1.dart';

enum Screens {
  LoginScreenType1,
}

class UIComponents extends StatelessWidget {
  final Screens screenType;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final String avatarImage;
  final Function onLoginClick;
  final Function navigatePage;
  final Function onAnotherAccountClick;
  UIComponents(
      {@required this.screenType,
      @required this.emailController,
      @required this.passwordController,
      @required this.avatarImage,
      @required this.onLoginClick,
      @required this.onAnotherAccountClick,
      @required this.navigatePage
      })
      : assert(screenType != null),
        assert(emailController != null),
        assert(passwordController != null),
        assert(avatarImage != "");

  @override
  Widget build(BuildContext context) {
    switch (screenType) {
      case Screens.LoginScreenType1:
        return LoginScreen1(
          emailController: emailController,
          passwordController: passwordController,
          avatarImage: avatarImage,
          onLoginClick: onLoginClick,
          navigatePage: navigatePage,
          onAnotherAccountClick: onAnotherAccountClick,
        );
    }
  }
}
