import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:minnal/service/google_service.dart';

class AuthProvider extends ChangeNotifier {
  FirebaseAuthService authservices = FirebaseAuthService();

  User? _user;

  AuthProvider() {
    authservices.firebaseAuth.authStateChanges().listen((user) {
      _user = user;
      notifyListeners();
    });
  }
  User? get user => _user;

  Future<UserCredential> signInWithGoogle() async {
    return authservices.signInWithGoogle();
  }

  Future<void> signOut() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
  }
}
