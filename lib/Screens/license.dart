// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../models/barberModel.dart';
import '../services/auth.dart';

class GetLicense extends StatelessWidget {
  const GetLicense(this.barberFetched, this.user, {Key? key}) : super(key: key);
  final Barber barberFetched;
  final User user;
  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
              title: const Text(
                "get your license",
                style: TextStyle(fontFamily: "rum-raising", fontSize: 30),
              ),
              backgroundColor: const Color(0xff394180)),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff191b2c),
                  Color(0xff191c31),
                  Color(0xff192270)
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 80, 8, 8),
                  child: Material(
                    color: const Color(0xff4a53a4),
                    elevation: 10,
                    borderRadius: BorderRadius.circular(30),
                    child: SizedBox(
                      width: width - 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25, top: 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "activate your license:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: "SF Pro Rounded",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: SizedBox(
                                height: 116,
                                width: 270,
                                child: Text(
                                  "please head to our headquarter with the necessary documents of your barbershop license to activate your account",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontFamily: "SF Pro Rounded",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Material(
                      color: const Color(0xaa574aa4),
                      elevation: 10,
                      borderRadius: BorderRadius.circular(30),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 30, left: 25, bottom: 30),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "account informations:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: "SF Pro Rounded",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                const Text(
                                  "UID: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "SF Pro Rounded",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  user.uid,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: "SF Pro Rounded",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  "email: ",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: "SF Pro Rounded",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  user.email!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: "SF Pro Rounded",
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15, bottom: 10),
                  child: TextButton.icon(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.red[600]),
                    ),
                    icon: const Icon(Icons.logout_rounded),
                    label: const Text('logout'),
                    onPressed: () async {
                      await _auth.signout();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
