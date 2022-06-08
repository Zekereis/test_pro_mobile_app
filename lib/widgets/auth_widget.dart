import 'package:flutter/material.dart';
import 'package:test_pro_mobile_app/landing_page/view.dart';
import 'package:test_pro_mobile_app/login/sign_up/sign_up_information.dart';
import 'package:test_pro_mobile_app/name_page/view.dart';

import '../core/model/my_app_user.dart';
import 'error_page.dart';

class AuthWidget extends StatelessWidget {
  const AuthWidget({Key? key, required this.snapshot}) : super(key: key);
  final AsyncSnapshot<MyAppUser?> snapshot;

  @override
  Widget build(BuildContext context) {
    if(snapshot.connectionState==ConnectionState.active){
      return snapshot.hasData ?const NamePage() :const LandingView();
    }
    return ErrorPage();
  }
}



