// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nhafeflek/services/auth.dart';
import 'package:nhafeflek/wrapper.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SignBarbershop extends StatelessWidget {
  const SignBarbershop({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "get verified",
              style: TextStyle(fontFamily: "rum-raising", fontSize: 30),
            ),
            backgroundColor: const Color(0xff394180),
          ),
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
            child: SizedBox(
                width: width,
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 60, 80, 0),
                          child: Image.asset('assets/images/QrFrame.png'),
                        ),
                        QrImage(
                          data: uid,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.all(100),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: Text(
                        "show this to your barbershop owner, as soon as he scans it you are automatically added as one of his barbers",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "SF Pro Rounded",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: SizedBox(
                        width: width,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Wrapper()),
                              );
                            },
                            style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all(
                                    const Color(0xff5680a7)),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff5680a7)),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 15)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(
                                            color: Color(0xff5680a7),
                                            width: 3)))),
                            child: const Text(
                              'Refresh',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                      child: SizedBox(
                        width: width,
                        child: ElevatedButton(
                            onPressed: () async {
                                  await AuthService().signout();
                                },
                            style: ButtonStyle(
                                shadowColor: MaterialStateProperty.all(
                                    Colors.red),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.red),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(vertical: 15)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        side: const BorderSide(
                                            color: Colors.redAccent,
                                            width: 3)))),
                            child: const Text(
                              'signout',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                      ),
                    )
                  ],
                )),
          ),
        ));
  }
}
