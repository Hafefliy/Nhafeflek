// ignore_for_file: file_names, use_build_context_synchronously, must_be_immutable, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:image_picker/image_picker.dart';

import '../../models/barberModel.dart';
import '../../services/database.dart';

class EditProfile extends StatefulWidget {
  String profilePicture;
  Barber barber;
  EditProfile({Key? key, required this.barber, required this.profilePicture})
      : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  final _phoneKey = GlobalKey<FormState>();
  // XFile? image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "edit profile",
            style: TextStyle(fontFamily: "rum-raising", fontSize: 30),
          ),
          backgroundColor: const Color(0xff394180)),
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff191b2c), Color(0xff191c31), Color(0xff192270)],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff394180),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Stack(
                                children: [
                                  const Center(
                                    child: CircleAvatar(
                                      radius: 50.0,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      // image = await ImagePicker().pickImage(
                                      //     source: ImageSource.gallery);
                                      // selectedImage = File(image!.path);
                                      // setState(() {});
                                    },
                                    child: Center(
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 8),
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.6),
                                              spreadRadius: 11,
                                              blurRadius:
                                                  4, // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: SvgPicture.asset(
                                          'assets/svg/Camera.svg',
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'firstname',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 80,
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: widget.barber.firstname,
                                              hintStyle: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Color(0xff617282)),
                                            ),
                                            onChanged: (val) {
                                              setState(() {
                                                widget.barber.firstname = val;
                                              });
                                            },
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'lastname',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                            width: 80,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: widget.barber.lastname,
                                                hintStyle: const TextStyle(
                                                    fontSize: 16.0,
                                                    color: Color(0xff617282)),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  widget.barber.lastname = val;
                                                });
                                              },
                                            )),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'phoneNumber',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Form(
                                          key: _phoneKey,
                                          child: SizedBox(
                                              width: 80,
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: widget.barber.phoneNumber,
                                                  hintStyle: const TextStyle(
                                                      fontSize: 16.0,
                                                      color: Color(0xff617282)),
                                                ),
                                                onChanged: (val) {
                                                  setState(() {
                                                    widget.barber.phoneNumber = val;
                                                  });
                                                },
                                              )),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'instagram',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                            width: 80,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: widget.barber.instagram,
                                                hintStyle: const TextStyle(
                                                    fontSize: 16.0,
                                                    color: Color(0xff617282)),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  widget.barber.instagram = val;
                                                });
                                              },
                                            )),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'province',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                            width: 80,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: widget.barber.province,
                                                hintStyle: const TextStyle(
                                                    fontSize: 16.0,
                                                    color: Color(0xff617282)),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  widget.barber.province = val;
                                                });
                                              },
                                            )),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'working hours',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                            width: 80,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: widget.barber.workingHours,
                                                hintStyle: const TextStyle(
                                                    fontSize: 16.0,
                                                    color: Color(0xff617282)),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  widget.barber.workingHours =
                                                      val;
                                                });
                                              },
                                            )),
                                      ]),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Container(
                                height: 44,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff12173c),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'barbershop',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                        SizedBox(
                                            width: 80,
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                hintText: widget
                                                    .barber.barbershopName,
                                                hintStyle: const TextStyle(
                                                    fontSize: 16.0,
                                                    color: Color(0xff617282)),
                                              ),
                                              onChanged: (val) {
                                                setState(() {
                                                  widget.barber.barbershopName =
                                                      val;
                                                });
                                              },
                                            )),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          height: 44,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xff12173c),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'available to home',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                  CupertinoSwitch(
                                      value: widget.barber.isAvailableToHome,
                                      activeColor: CupertinoColors.activeGreen,
                                      onChanged: (bool newValue) {
                                        setState(() {
                                          widget.barber.isAvailableToHome =
                                              !widget.barber.isAvailableToHome;
                                        });
                                      }),
                                ]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 40,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: ElevatedButton(
                  onPressed: () {
                    DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)
                        .updateBarberData(widget.barber);
                    // if (image != null) {
                    //   await locator
                    //       .get<UserController>()
                    //       .uploadProfilePicture(selectedImage!);
                    // }
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xffef9227))),
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
