import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:online_database_application/model/user_model.dart';
import 'package:provider/provider.dart';
import 'dart:developer';

class LoginProvider extends ChangeNotifier {
  final auth = FirebaseAuth.instance;
  final _db = FirebaseFirestore.instance;
  createUser(
      {required String email,
      required String name,
      required String mobileNumber,
      required String password}) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        final user = UserModel(
            name: name,
            email: email,
            number: mobileNumber,
            uid: auth.currentUser!.uid.toString());

        Map<String, dynamic> userData = {
          "username": user.name,
          "userEmail": user.email,
          "userMobileNumber": user.number,
          "userID": user.uid,
        };

        return _db
            .collection('User')
            .add(userData)
            .then((value) => print('data saved'));
      });
    } catch (error) {
      log(error.toString());
    }
  }
}
