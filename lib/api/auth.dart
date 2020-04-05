import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> signInWithEmailAndPassword(String email, String password);
  Future<String> createUserWithEmailAndPassword(String email, String password);
}

class Auth implements BaseAuth {
  @override
  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final AuthResult authResult =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user.uid;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<String> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final AuthResult authResult =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user.uid;
    } catch (e) {
      return null;
    }
  }
}
