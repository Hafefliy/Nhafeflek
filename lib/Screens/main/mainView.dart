// ignore_for_file: file_names, library_private_types_in_public_api, unused_field, avoid_print, unused_local_variable, use_build_context_synchronously

import 'dart:async';

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:nhafeflek/Screens/license.dart';
import 'package:nhafeflek/Screens/signBarbershop.dart';
import 'package:nhafeflek/localization/app_localization.dart';
import 'package:nhafeflek/main.dart';
import 'package:nhafeflek/services/auth.dart';

import '../appointment.dart';
import '../../models/barberModel.dart';
import '../Profile/profile.dart';

//FIXME: separate user app with barber app authentication;

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class MyTabs {
  final String title;
  MyTabs({required this.title});
}

class _MainViewState extends State<MainView> with TickerProviderStateMixin {
  final AuthService _auth = AuthService();
  //TODO: set initial camera position to user locarion;
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(36.729843, 3.005858), zoom: 15);

  @override
  void initState() {
    super.initState();
  }

  final Location _location = Location();
  Completer<GoogleMapController> controller = Completer();

  void _onMapCreated(GoogleMapController cntlr) {
    controller.complete(cntlr);
  }

  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    return FirestoreBuilder<BarberDocumentSnapshot>(
        ref: barebrsRef.doc(uid),
        builder: (context, AsyncSnapshot<BarberDocumentSnapshot> snapshot,
            Widget? child) {
          print(uid);

          if (snapshot.hasError) return Text('${snapshot.error}');
          if (!snapshot.hasData) {
            return Container(
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
            ));
          }
          BarberDocumentSnapshot documentSnapshot = snapshot.requireData;

          if (!documentSnapshot.exists) {
            return Container(
              margin: const EdgeInsets.only(bottom: 10, top: 10),
              child: TextButton.icon(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.red[600]),
                ),
                icon: const Icon(Icons.logout_rounded),
                label: const Text('logout'),
                onPressed: () async {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => MyApp()));
                  await _auth.signout();
                },
              ),
            );
          }

          Barber barber = documentSnapshot.data!;
          return !barber.verified
              ? GetLicense(barber, auth.currentUser!)
              : (barber.barbershopUID == '')
                  ? const SignBarbershop()
                  : MaterialApp(
                      debugShowCheckedModeBanner: false,
                      home: Scaffold(
                          appBar: AppBar(
                            title: Text(
                              AppLocalization.of(context)!.translate('hello-world'),
                              style: const TextStyle(
                                  fontFamily: "rum-raising", fontSize: 30),
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
                            child: Container(
                              margin: const EdgeInsets.all(20),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Stack(children: [
                                    GoogleMap(
                                      initialCameraPosition:
                                          _initialCameraPosition,
                                      myLocationEnabled: true,
                                      onMapCreated: _onMapCreated,
                                    ),
                                    Positioned(
                                      right: 10,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                SizedBox(
                                                  width: 60,
                                                  height: 58,
                                                  child: InkWell(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                const ProfileView()),
                                                      );
                                                    },
                                                    child: Stack(
                                                      children: [
                                                        Container(
                                                          width: 60,
                                                          height: 58,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                              color:
                                                                  Colors.black,
                                                              width: 2,
                                                            ),
                                                            color: const Color(
                                                                0xff606ac0),
                                                          ),
                                                        ),
                                                        Positioned.fill(
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                              width: 36,
                                                              height: 36,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8),
                                                                    ),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                            "assets/svg/Profile.svg"),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SizedBox(
                                              width: 60,
                                              height: 58,
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const AppointmentView()),
                                                  );
                                                },
                                                child: Stack(
                                                  children: [
                                                    Container(
                                                      width: 60,
                                                      height: 58,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color: Colors.black,
                                                          width: 2,
                                                        ),
                                                        color: const Color(
                                                            0xff606ac0),
                                                      ),
                                                    ),
                                                    Positioned.fill(
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: Image.asset(
                                                              "assets/images/Work.png"),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ])),
                            ),
                          )),
                    );
        });
  }
}
