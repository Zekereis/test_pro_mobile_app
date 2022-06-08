import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LandingFacebook extends StatelessWidget {
  const LandingFacebook({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      Buttons.FacebookNew,
      onPressed: () {},
    );
  }
}
