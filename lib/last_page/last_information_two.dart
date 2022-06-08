import 'package:flutter/material.dart';

import 'last_number_picker.dart';

class LastInformationTwo extends StatelessWidget {
  const LastInformationTwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: Text(
            'How much is your lenght?',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90,left: 155),
          child: Row(
            children: [
              IntegerExample(),
              Text('cm')
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: ElevatedButton(
            onPressed: () {},
            child: Text('Next'),
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 50),
                textStyle: TextStyle(fontSize: 20)),
          ),
        )
      ]),
    );
  }
}
