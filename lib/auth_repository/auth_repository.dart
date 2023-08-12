import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthRepository{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signInWithEmailAndPassword(String email, String password) async {
    try{
      final userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return userCredential.user;
    } catch (e) {
      if (kDebugMode) {
        print('Error signing user in: $e');
      }
    }
    return null;
  }

  Future<User?> createUserWithEmailAndPassword(String email, String password) async {
    try{
      final userData = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password
      );
      return userData.user;
    } catch (e) {
      if (kDebugMode) {
        print('Error creating user: $e');
      }
    }
    return null;
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}