import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Handles signin with Google

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  User? _user;

  AuthProvider();

  bool get isAuthenticated => _user != null ? true : false;
  String get getUserId =>  _user!.uid;
  String get getUsername => _user!.displayName!;
  String get getUserEmail => _user!.email!;
 
  Future<void> signIn() async {
    try {
      GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuth = await googleSignInAccount!.authentication;
      final AuthCredential credentials = GoogleAuthProvider.credential(
        idToken: googleSignInAuth.idToken,
        accessToken: googleSignInAuth.accessToken
      );

      _user = (await _auth.signInWithCredential(credentials)).user;
      notifyListeners();
    }
    catch (error) {
      print("Error Signing into Google: $error");
    }
  }

  void signOut() {
    _googleSignIn.signOut();
    _user = null;
    notifyListeners();
  }
  

}