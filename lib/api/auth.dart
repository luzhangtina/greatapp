import 'package:firebase_auth/firebase_auth.dart';

abstract class BaseAuth {
  Future<String> signInWithEmailAndPassword({String email, String password});
  Future<String> createUserWithEmailAndPassword(
      {String email, String password});
  Future<void> signOut();
  Future<String> currentUser();
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<String> signInWithEmailAndPassword(
      {String email, String password}) async {
    try {
      final AuthResult authResult =
          await _firebaseAuth.signInWithEmailAndPassword(
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
      {String email, String password}) async {
    try {
      final AuthResult authResult =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return authResult.user.uid;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  @override
  Future<String> currentUser() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    return currentUser == null ? null : currentUser.uid;
  }
}
