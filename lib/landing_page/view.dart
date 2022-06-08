import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'landing_description.dart';
import 'landing_email.dart';
import 'landing_facebook.dart';
import 'landing_google.dart';
import 'landing_logo.dart';
import 'landing_without.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.center,
          ),
          landing_logo(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: landing_description(),
          ),
          LandingEmail(),
          Divider(),
          LandingGoogle(),
          Divider(),
          LandingFacebook(),
          Divider(),
          LandingWithout(),
        ],
      ),
    );
  }
}






