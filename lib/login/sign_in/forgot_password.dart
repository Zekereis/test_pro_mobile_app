import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
          text: 'Forgot Password?',
          style: TextStyle(fontSize: 14,color: Colors.grey,decoration: TextDecoration.underline),
          recognizer: TapGestureRecognizer()..onTap = () {print('tıkladı');},
        ),
      ]),
    );
  }
}
