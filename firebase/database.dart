import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DatabaseMethods
{
  Future addUserInfoToDatabase({required String? userId, required Map<String, dynamic> userInfoMap}) async
  {
    FirebaseFirestore.instance.collection('users').doc(userId).set(userInfoMap);
  }
}

