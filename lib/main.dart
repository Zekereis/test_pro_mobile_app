import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_pro_mobile_app/core/service/firebase_service.dart';
import 'package:test_pro_mobile_app/core/service/i_auth_service.dart';
import 'package:test_pro_mobile_app/gender_page/view.dart';
import 'package:test_pro_mobile_app/landing_page/view.dart';
import 'package:test_pro_mobile_app/last_page/view.dart';
import 'package:test_pro_mobile_app/login/login_screen.dart';
import 'package:test_pro_mobile_app/name_page/view.dart';
import 'package:test_pro_mobile_app/widgets/auth_widget.dart';
import 'package:test_pro_mobile_app/widgets/auth_widget_builder.dart';

import 'core/model/my_app_user.dart';
import 'firebase_options.dart';

import 'last_page/last_number_picker.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<IAuthService>(create: (_)=>AuthService(),
        )
      ],
      child: AuthWidgetBuilder(
        onPageBuilder: (context,AsyncSnapshot<MyAppUser?> snapShot)=>
         MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            tabBarTheme: TabBarTheme(
                labelColor: Colors.black,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: Colors.grey))),
            primaryColor: Colors.green, // outdated and has no effect to Tabbar
          ),
          home: AuthWidget(snapshot: snapShot),
        ),
      ),
    );
  }
}
