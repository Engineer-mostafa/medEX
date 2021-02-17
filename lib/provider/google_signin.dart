import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInProvider extends ChangeNotifier {
  final _googleSignIn = GoogleSignIn();
  bool _isSigningIn;

  GoogleSignInProvider() {
    _isSigningIn = false;
  }

  bool get isSigningIn => _isSigningIn;

  set isSigningIn(bool isSigningIn) {
    _isSigningIn = isSigningIn;
    notifyListeners();
  }

  Future login() async {
    isSigningIn = true;

    try {


//get the user photo,username.....etc
      final user = await _googleSignIn.signIn();
      if (user == null) {
        isSigningIn = false;
        return;
      } else {
        final googleAuth = await user.authentication;



//get user credentials from google
        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );


//sign in with firebase by credentials
        await FirebaseAuth.instance.signInWithCredential(credential);

        isSigningIn = false;
      }
    } catch (error) {
      print(error);
    }
  }

  void logout() async {
    await _googleSignIn.disconnect();
    FirebaseAuth.instance.signOut();
  }
}
