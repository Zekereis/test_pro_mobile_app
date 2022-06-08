import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  const NameText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 150,top: 90),
      child: Text('Your Name?',style: TextStyle(fontSize: 38,fontWeight: FontWeight.w400),),
    );
  }
}