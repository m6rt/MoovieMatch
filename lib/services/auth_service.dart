import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final GoogleSignIn signIn = GoogleSignIn.instance;

  
  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
    String username,
  ) async {
    final User? user = _auth.currentUser;
    if (isUsernameTaken(username) == true) {
      print("Username is already taken.");
      return null; // ERROR EKRANI EKLEMEK LAZIM
    } else {
      try {
        await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        ;
      } on FirebaseAuthException catch (e) {
        if (e.code == "user-not-found") {
          print("No user found for that email."); //LOCALIZATION YAPICALCAK
        } else if (e.code == "wrong-password") {
          print(
            "Wrong password provided for that user.",
          ); //LOCALIZATION YAPICALCAK Hata mesajı kullanıcıya dönülücek
        } else {
          print("bir boklar oldu else e düştün  ?? \n");
          print(e.toString());
        }
        return null;
      } catch (e) {
        print(e.toString());
      }
      if (user != null) {
        await _firestore.collection('users').doc(user.uid).set({
          'username': username,
          'email': email,
        });
      }
      return null;
    }
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
