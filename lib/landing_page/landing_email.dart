import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../login/login_screen.dart';

class LandingEmail extends StatelessWidget {
  const LandingEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 125),
      child: SignInButtonBuilder(
        text: 'Get going with Email',
        icon: Icons.email,
        onPressed: () {Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())
        );
        },
        backgroundColor: Colors.blueGrey[700]!,
        width: 220.0,
      ),
    );
  }
}