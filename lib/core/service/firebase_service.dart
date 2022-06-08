import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:test_pro_mobile_app/core/model/my_app_user.dart';
import 'package:test_pro_mobile_app/core/service/i_auth_service.dart';
import 'package:test_pro_mobile_app/core/service/mixin_user.dart';






class AuthService with ConvertUser implements IAuthService{

  final FirebaseAuth _authInstance = FirebaseAuth.instance;

  MyAppUser _getUser(User? user){
    return MyAppUser(userId: user!.uid, userMail: user.email!);
  }

  @override
  Future<MyAppUser> createUserWithEmailAndPassword(
      {required String email, required String password}) async{
    var _tempUser = await _authInstance.createUserWithEmailAndPassword(
        email: email, password: password);
    return convertUser(_tempUser);
  }



  @override
  Future<MyAppUser> signInEmailAndPassword(
      {required String email, required String password}) async {
    var _tempUser = await _authInstance.signInWithEmailAndPassword(
        email: email, password: password);
    return convertUser(_tempUser);
  }

  @override
  Future<void> signOut() async{
    await _authInstance.signOut();

  }

  @override
  Stream<MyAppUser?> get onAuthStateChanged =>
  _authInstance.authStateChanges().map(_getUser);

}

