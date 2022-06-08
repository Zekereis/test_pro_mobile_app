import 'package:flutter/material.dart';

import '../../name_page/view.dart';


class SignInButton extends StatelessWidget {
   SignInButton({
    Key? key,
  }) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController =TextEditingController();



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {



    },
      child: Text('Contunie'),
      style: ElevatedButton.styleFrom(fixedSize: const Size(400, 50),textStyle: TextStyle(fontSize: 20)),);
  }
}