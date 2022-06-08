import 'package:flutter/material.dart';
import 'package:test_pro_mobile_app/home_page/view.dart';

import 'last_number_picker.dart';

class LastInformationThree extends StatelessWidget {
  const LastInformationThree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Text('How much is your weight?',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90,left: 155),
            child: Row(
              children: [
                IntegerExample(),
                Text('kg')
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: ElevatedButton(onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
            child: Text('Next'),
              style: ElevatedButton.styleFrom(fixedSize: const Size(350, 50),textStyle: TextStyle(fontSize: 20)),),
        )
        ]));
  }
}
