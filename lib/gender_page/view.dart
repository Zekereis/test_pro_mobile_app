import 'package:flutter/material.dart';
import 'package:gender_selection/gender_selection.dart';
import 'package:test_pro_mobile_app/gender_page/gender_selection.dart';

import 'gender_button.dart';
import 'gender_text.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Image.asset(
          'assets/images/dumbbell.png',
          fit: BoxFit.contain,
          height: 72,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GenderText(),
              GenderSelectionWidget(),
              GenderButton(),
            ],
          ),
        ),
      ),
    );
  }
}




