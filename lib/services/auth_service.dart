import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mooviematch/constants/throw_error.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn signIn = GoogleSignIn.instance;

  //!!!!!!!!!
  ///// BURADAA SIKINTILAR VAR REGISTER ETME KONTROL EDILMEDI BUGLAR GÖRÜLDÜ AMA EKSIK VAR DEDIGIM GIBI ERROR EKRANI EKLENMELI SAYFASI OLUŞTURULDU
  ///!!!!!!
  ///
  ///

  Future<User?> createUserWithEmailAndPassword(
    String email,
    String password,
    String username,
    BuildContext context,
  ) async {
    final User? user = _auth.currentUser;
    if (isUsernameTaken(username) == true) {
      throwError(
        context,
        "Username Already Taken",
      ); //ERROR EKRANI EKLEMEK LAZIM
      // ERROR EKRANI EKLEMEK LAZIM // localization yapılacak
      return (null);
    } else {
      try {
        await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        ;
      } on FirebaseAuthException catch (e) {
        if (e.code == "email-already-in-use") {
          throwError(context, "Email Already In Use");
          return null;
        } else if (e.code == "weak-password") {
          throwError(context, "Weak Password");
          return (null);
        } else {
          throwError(context, "An error occurred");
          return (null);
        }
      } catch (e) {
        print(e.toString());
      }
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'username': username,
          'email': email,
        });
      }
      return (null);
    }
  }

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
    BuildContext context,
  ) async {
    User? user;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user = userCredential.user;
    } on FirebaseAuthException catch (e) {
       if (e.code == "wrong-password") {
        throwError(context, "Wrong Password");
      } else if (e.code == "invalid-email") {
        throwError(context, "Invalid Email");
      }

      else {
        throwError(context, "An error occurred");
      }
    } catch (e) {
      print(e.toString());
    }
    return user;
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<void> sendEmailVerification() async {
    try {
      User? user = _auth.currentUser;
      await user?.sendEmailVerification();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<bool> isUsernameTaken(String username) {
    return _firestore
        .collection('users')
        .where('username', isEqualTo: username)
        .get()
        .then((querySnapshot) => querySnapshot.docs.isNotEmpty);
  }
}
