// ignore_for_file: avoid_print, no_leading_underscores_for_local_identifiers
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nhafeflek/Screens/authentication/sign_in.dart';

import 'Screens/main/mainView.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth _auth = FirebaseAuth.instance;
    if (_auth.currentUser == null) {
      return const SignInPage();
    } else {
      return const MainView();
    }
  }
}
