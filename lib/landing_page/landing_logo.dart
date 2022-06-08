import 'package:flutter/material.dart';

class landing_logo extends StatelessWidget {
  const landing_logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(width: 100,height: 100,
          child: Image.asset('assets/images/dumbbell.png')),
    );
  }
}
