import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pro_mobile_app/core/service/i_auth_service.dart';

import 'name_button.dart';
import 'name_text.dart';
import 'name_text_form_field.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen: false);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [IconButton(onPressed: () async{
          await _authService.signOut();
        }, icon: const Icon(Icons.exit_to_app,color: Colors.black,))],
      ),
      body: Column(children: [
        NameText(),
        NameTextFormField(),
        NameButton(),
      ],
      ),
    );
  }
}




