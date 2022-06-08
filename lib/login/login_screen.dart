import 'package:flutter/material.dart';
import 'package:test_pro_mobile_app/login/sign_in/sign_in_information.dart';
import 'sign_up/sign_up_information.dart';
import 'sign_in/sign_in_information.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

 class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: BackButton(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            bottom: const TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  text: 'Sign up',
                ),
                Tab(
                  text: 'Sing in',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SignUpInformation(),
              SignInInformation(),

            ],
          ),
        ));
  }
}
