// ignore_for_file: unused_field, use_build_context_synchronously

import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nhafeflek/models/barberModel.dart';
import 'package:nhafeflek/models/default_data.dart';
import 'package:nhafeflek/provider/current_data.dart';
import 'package:nhafeflek/services/auth.dart';
import 'package:provider/provider.dart';

import '../../main.dart';
import 'editProfile.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final AuthService _auth = AuthService();
  String uid = FirebaseAuth.instance.currentUser!.uid;
  final DefaultData defaultData = DefaultData();

  Locale _dropdownValue = const Locale('en');

  void dropdownCallBack(Object? selectedValue) {
    if (selectedValue is Locale) {
      setState(() {
        _dropdownValue = selectedValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "Profile",
                style: TextStyle(fontFamily: "rum-raising", fontSize: 30),
              ),
              backgroundColor: const Color(0xff394180),
            ),
            body: FirestoreBuilder<BarberDocumentSnapshot>(
                ref: barebrsRef.doc(uid),
                builder: (context,
                    AsyncSnapshot<BarberDocumentSnapshot> snapshot,
                    Widget? child) {
                  if (snapshot.hasError) {
                    return const Text('Something went wrong!');
                  }
                  if (!snapshot.hasData) return const Text('Loading user...');

                  BarberDocumentSnapshot documentSnapshot =
                      snapshot.requireData;

                  if (!documentSnapshot.exists) {
                    return const Text('User does not exist.');
                  }

                  Barber barber = documentSnapshot.data!;
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
                    ),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Container(
                              height: size.height / 2,
                              margin: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(29),
                                color: const Color(0xff394180),
                              ),
                            ),
                            // edit profile icon
                            Positioned(
                              right: 20,
                              top: 20,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditProfile(
                                              barber: barber,
                                              profilePicture: '',
                                            )),
                                  );
                                },
                                child: SizedBox(
                                  width: 32,
                                  height: 32,
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 32,
                                        height: 32,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Color(0xff171d49),
                                        ),
                                      ),
                                      Positioned.fill(
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            padding: const EdgeInsets.all(4),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: SvgPicture.asset(
                                                      "assets/svg/Edit.svg"),
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
                            ),
                            // profile picture and barber name
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: 93,
                                        height: 93,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color(0xffb9bcde),
                                            width: 2,
                                          ),
                                          color: const Color(0xff6b73b2),
                                        ),
                                      ),
                                      Positioned(
                                          right: 0,
                                          bottom: 0,
                                          child: SizedBox(
                                            width: 35,
                                            height: 35,
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 35,
                                                  height: 35,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Color(0xff9199da),
                                                  ),
                                                ),
                                                Container(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 3,
                                                    top: 3,
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
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
                                                                BorderRadius
                                                                    .circular(
                                                                        8),
                                                          ),
                                                          child: SvgPicture.asset(
                                                              "assets/svg/Shield Done.svg")),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ))
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(top: 10.0),
                                    child: Text(
                                      "${barber.firstname} ${barber.lastname}",
                                      textAlign: TextAlign.justify,
                                      style: const TextStyle(
                                        color: Color(0xffe8e8e8),
                                        fontSize: 18,
                                        fontFamily: "SF Compact Display",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // barber information stack
                            Container(
                              margin: EdgeInsets.only(top: size.height / 4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/Time Square.svg"),
                                          const SizedBox(width: 7),
                                          Text(
                                            barber.workingHours,
                                            style: const TextStyle(
                                              color: Color(0xffdbdbdb),
                                              fontSize: 18,
                                              fontFamily: "SF Compact Rounded",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 30),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/Call.svg"),
                                          const SizedBox(width: 7),
                                          Text(
                                            barber.phoneNumber,
                                            style: const TextStyle(
                                              color: Color(0xffdbdbdb),
                                              fontSize: 18,
                                              fontFamily: "SF Compact Rounded",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/Time Circle.svg"),
                                          const SizedBox(width: 7),
                                          Text(
                                            barber.experience == 1
                                                ? "1 year"
                                                : "${barber.experience} years",
                                            style: const TextStyle(
                                              color: Color(0xffdbdbdb),
                                              fontSize: 18,
                                              fontFamily: "SF Compact Rounded",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 30),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                              "assets/svg/instagram.svg"),
                                          const SizedBox(width: 7),
                                          Text(
                                            barber.instagram,
                                            style: const TextStyle(
                                              color: Color(0xffdbdbdb),
                                              fontSize: 18,
                                              fontFamily: "SF Compact Rounded",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            // works for barbershop
                            Positioned(
                              bottom: 10,
                              child: Center(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/svg/Location.svg"),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: Text(
                                            "Works For ${barber.barbershopName}",
                                            style: const TextStyle(
                                              color: Color(0xffd6d6d6),
                                              fontSize: 14,
                                              fontFamily: "SF Pro Rounded",
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: size.width - 100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Consumer<CurrentData>(builder:
                                              (context, currentData, child) {
                                            return Container(
                                                margin: const EdgeInsets.only(
                                                    right: 10, left: 10),
                                                padding: const EdgeInsets.only(
                                                    right: 10, left: 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.black26,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12)),
                                                child: DropdownButton<String>(
                                                  dropdownColor:
                                                      const Color.fromARGB(
                                                          167, 0, 0, 0),
                                                  style: const TextStyle(
                                                      color: Colors.white),
                                                  value: MyApp()
                                                      .currentData
                                                      .defineCurrentLanguage(
                                                          context),
                                                  underline: const SizedBox(),
                                                  onChanged:
                                                      (String? newValue) {
                                                      MyApp()
                                                          .currentData
                                                          .changeLocale(
                                                              newValue!);
                                                  },
                                                  items: defaultData
                                                      .languagesListDefault
                                                      .map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                    (String value) {
                                                      return DropdownMenuItem<
                                                          String>(
                                                        value: value,
                                                        child: Text(value),
                                                      );
                                                    },
                                                  ).toList(),
                                                ));
                                          }),
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 10, top: 10),
                                            child: TextButton.icon(
                                              style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.white),
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        Colors.red[600]),
                                              ),
                                              icon: const Icon(
                                                  Icons.logout_rounded),
                                              label: const Text('logout'),
                                              onPressed: () async {
                                                await _auth.signout();
                                                Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            MyApp()));
                                              },
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        // profile illustration widget
                      ],
                    ),
                  );
                })));
  }
}
