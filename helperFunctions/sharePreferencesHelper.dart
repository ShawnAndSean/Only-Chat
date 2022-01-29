//BUILD NUMBER 1
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';

class SharedPreferencesHelper{
  //FOR SHARED PREFERENCES FUNCTION
  static String userNameKey = 'USERNAMEKEY';
  static String userEmailKey = 'USERMAILKEY';
  static String userIdKey = 'USERKEY';
  static String userDisplayNameKey = 'USERDIPLAYNAMEKEY';
  static String userProfilePictureKey = 'USERPROFILEPICKEY';

  //SAVE DATA
  //? means that getUserName will not be null. ! assures getUserName that it will not be null.
 Future<bool> saveUserName (String? getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //return a string that returns the getUserName from the Getters user and the static String userNameKey
    return prefs.setString(userNameKey,getUserName!);
  }
  Future<bool> saveUserEmail (String? getUserEmail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey,getUserEmail!);
  }
  Future<bool> saveUserID (String? getUserID) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdKey,getUserID!);
  }
  Future<bool> saveUserDisplayName(String? getUserDisplay) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userDisplayNameKey,getUserDisplay!);
  }
  Future<bool> saveUserProfilePicture(String? getUserProfile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userProfilePictureKey,getUserProfile!);
  }
  //GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS GETTERS
  //<=====================================================================================================>
  //GET DATA FROM THE USER
  Future <String?> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }
  Future <String?> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);
  }
  Future <String?> getUserID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userIdKey);
  }
  Future <String?> getUserDisplay() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userDisplayNameKey);
  }
  Future <String?> getUserProfilePicture() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userProfilePictureKey);
  }





}