import 'package:flutter/material.dart';
import 'package:test_pro_mobile_app/name_page/view.dart';

class LandingWithout extends StatelessWidget {
  const LandingWithout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NamePage()));
    },
      child: Text('Continue  without signing up'),
      style: ElevatedButton.styleFrom(fixedSize: const Size(222, 39)),);
  }
}
