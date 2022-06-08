import 'package:flutter/material.dart';
import 'package:test_pro_mobile_app/last_page/view.dart';

class GenderButton extends StatelessWidget {
  const GenderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 135),
      child: ElevatedButton(onPressed: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const LastPage()));
      },
        child: Text('Next'),
        style: ElevatedButton.styleFrom(fixedSize: const Size(350, 50),textStyle: TextStyle(fontSize: 20)),),
    );
  }
}