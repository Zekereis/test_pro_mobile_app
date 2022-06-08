import 'package:flutter/material.dart';
import 'package:test_pro_mobile_app/last_page/last_information_two.dart';

import 'last_number_picker.dart';

class LastInformationOne extends StatelessWidget {
  const LastInformationOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.only(top: 90),
        child: Text(
          'How old are you?',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 90),
        child: IntegerExample(),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 90),
        child: ElevatedButton(
          onPressed: () {

          },
          child: Text('Next'),
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 50),
              textStyle: TextStyle(fontSize: 20)),
        ),
      )
    ]));
  }
}
