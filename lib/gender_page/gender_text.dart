import 'package:flutter/material.dart';

class GenderText extends StatelessWidget {
  const GenderText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: Text('What is your sex?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
    );
  }
}
