import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final googleSignIn = GoogleSignIn();
  final firebaseAuth = FirebaseAuth.instance;
  void Function()? _onLoggedIn;

  User? _user;

  User? get user => _user;

  Future<void> LogInGoogle() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return;
    final googleAuth = await googleUser.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential =
    await firebaseAuth.signInWithCredential(credential);

    _user = userCredential.user;
    notifyListeners();
    if (_onLoggedIn != null) {
    _onLoggedIn!();
  }
  }

  Future<void> LogOut() async {
    await googleSignIn.disconnect();
    await firebaseAuth.signOut();

    _user = null;
    notifyListeners();
  }

  void registerOnLoggedIn(void Function()? onLoggedIn) {
  _onLoggedIn = onLoggedIn;
}
}
