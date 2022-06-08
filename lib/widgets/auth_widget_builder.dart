import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pro_mobile_app/core/service/i_auth_service.dart';

import '../core/model/my_app_user.dart';

class AuthWidgetBuilder extends StatelessWidget {
  const AuthWidgetBuilder({Key? key, required this.onPageBuilder}) : super(key: key);
  final Widget Function(
      BuildContext context, AsyncSnapshot<MyAppUser?> snapshot) onPageBuilder;

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen:false);
    return StreamBuilder<MyAppUser?>(
      stream: _authService.onAuthStateChanged,
      builder: (context,AsyncSnapshot<MyAppUser?> snapShot){
        final _userData = snapShot.data;
        if(_userData != null) {
          return MultiProvider(providers: [
            Provider.value(value: _userData),
          ],child: onPageBuilder(context,snapShot),
          );
        }
        return onPageBuilder(context,snapShot);
      }
    );
  }
}
