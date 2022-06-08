import 'package:flutter/material.dart';

class NameTextFormField extends StatelessWidget {
  const NameTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50,left: 33,top: 80),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Your Name',

        ),
      ),
    );
  }
}