// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:nhafeflek/models/user.dart';

import 'database.dart';
import '../models/barberModel.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<Userr> getUser() async {
    var firebaseUser = _auth.currentUser!;
    return Userr(uid: firebaseUser.uid);
  }

  Userr? _userFromFirebaseUser(User? barber) {
    if (barber != null) {
      print(barber.uid);
      return Userr(uid: barber.uid);
    } else {
      print('user is null');
      return null;
    }
  }

  Stream<Userr?> get user {
    return _auth.authStateChanges().map(_userFromFirebaseUser);
  }

  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User barber = result.user!;
      return _userFromFirebaseUser(barber);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future registerWithEmailAndPassword(
      String email, String password, Barber barberInformation) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User barber = result.user!;

      await DatabaseService(uid: barber.uid).setBarberData(barberInformation);
      return _userFromFirebaseUser(barber);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User barber = result.user!;
      return _userFromFirebaseUser(barber);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signout() async {
    try {
      print('loggedOut');
      return await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
