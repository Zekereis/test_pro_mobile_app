import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/service/i_auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authService = Provider.of<IAuthService>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/dumbbell.png',
          fit: BoxFit.contain,
          height: 72,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [IconButton(onPressed: () async{
          await _authService.signOut();
        }, icon: const Icon(Icons.exit_to_app,color: Colors.black,))],
      ),
      body: Column(children: [
        Align(alignment: Alignment.center),
        Padding(
          padding: EdgeInsets.only(top: 30,bottom: 10),
          child: Text('Welcome',style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),),
        ),
        Image.asset('assets/images/fitness.png'),
        ElevatedButton(onPressed: (){}, child: Text('lets start'),
          style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            fixedSize: const Size(300, 50),
            textStyle: TextStyle(fontSize: 20)),

        ),
      ],
      ),
    );
  }
}
