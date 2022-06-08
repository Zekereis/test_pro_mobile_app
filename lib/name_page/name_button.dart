import 'package:flutter/material.dart';

import '../gender_page/view.dart';

class NameButton extends StatelessWidget {
  const NameButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 190),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const GenderPage()));
        },
        child: Text('Continue'),
        style: ElevatedButton.styleFrom(
            fixedSize: const Size(350, 50), textStyle: TextStyle(fontSize: 20)),
      ),
    );
  }
}
