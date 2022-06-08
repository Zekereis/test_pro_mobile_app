import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pro_mobile_app/core/service/i_auth_service.dart';

import 'privacy_policy.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();

class SignUpInformation extends StatefulWidget {
  const SignUpInformation({Key? key}) : super(key: key);



  @override
  State<SignUpInformation> createState() => _SignUpInformationState();
}

class _SignUpInformationState extends State<SignUpInformation> {
  bool _passwordVisible = false;
  late String _password;

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen: false);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 24),
              child: TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.text,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  labelText: 'Create Password',
                  suffixIcon: IconButton(
                    color: Colors.grey,
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  labelText: 'Re-write Password',
                  suffixIcon: IconButton(
                    color: Colors.grey,
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 79),
              child: privacyPolicyLinkAndTermsOfService(),
            ),
            ElevatedButton(
              onPressed: () async{
                await _authService.createUserWithEmailAndPassword(
                    email: _emailController.text, password: _passwordController.text);
              },
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(400, 50),
                  textStyle: TextStyle(fontSize: 20)),
              child: const Text('Contunie'),
            ),
          ],
        ),
      ),
    );
  }
}
