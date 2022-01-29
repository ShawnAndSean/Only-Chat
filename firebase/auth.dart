//BUILD NUMBER 2
import 'package:only_chat/mainLine/lobby.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';
import '../helperFunctions/sharePreferencesHelper.dart';
import 'database.dart';

class AuthMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  getCurrentUser() {
    return auth.currentUser;
  }

  signInWithGoogle(BuildContext context) async {
    final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
    final GoogleSignIn _googleSignIn = GoogleSignIn(); //1

    final GoogleSignInAccount?
        googleSignInAccount = //? because we are waiting, thus it is transporting for null.
        await _googleSignIn.signIn(); //2

    final GoogleSignInAuthentication? googleSignInAuthentication =
        await googleSignInAccount
            ?.authentication; //need google sign in notification, thus we need to wait for it.

    final AuthCredential credential = GoogleAuthProvider.credential(
        idToken: googleSignInAuthentication?.idToken,
        accessToken: googleSignInAuthentication?.accessToken);
    UserCredential result =
        await _firebaseAuth.signInWithCredential(credential);
    User? userDetails = result.user;
    //Assures that it will not get any null due to ?
    SharedPreferencesHelper().saveUserEmail(userDetails?.email);
    SharedPreferencesHelper().saveUserID(userDetails?.uid);
    SharedPreferencesHelper().saveUserDisplayName(userDetails?.displayName);
    SharedPreferencesHelper().saveUserProfilePicture(userDetails?.photoURL);

    Map<String, dynamic> userInfoMap = {
      'email': userDetails?.email,
      'name': userDetails?.displayName,
      'username': userDetails?.displayName, //username for signing in, name for featuring inside the application
      'profileUrl': userDetails?.photoURL,
      'userid': userDetails?.uid
    };

    //Call DatabaseMethods then UserInterface.id;
    DatabaseMethods()
        .addUserInfoToDatabase(
            userId: userDetails?.uid, userInfoMap: userInfoMap)
        .then(
          (value) => Navigator.pushNamed(context, Lobby.id),
        );
  }
}
