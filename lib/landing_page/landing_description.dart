import 'package:flutter/material.dart';

class landing_description extends StatelessWidget {
  const landing_description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Bodybuilding at home without going to the gym',style: TextStyle(fontSize: 14,color: Colors.black,),textAlign: TextAlign.center,);
  }
}