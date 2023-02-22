// ignore_for_file: file_names
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:json_annotation/json_annotation.dart';

part 'barberModel.g.dart';

@JsonSerializable(explicitToJson: true)
class Barber {
  String barberUID;
  String firstname;
  String lastname;
  String phoneNumber;
  String bio;
  int age;
  String province;
  int experience;
  double rating;
  String instagram;
  String workingHours;
  int haircutsDone = 0;
  bool verified = false;
  String barbershopUID;
  String barbershopName;
  bool isAvailableToHome;

  Barber(this.haircutsDone, this.verified,
      {required this.barberUID,
      required this.firstname,
      required this.lastname,
      required this.phoneNumber,
      required this.bio,
      required this.experience,
      required this.rating,
      required this.workingHours,
      required this.age,
      required this.instagram,
      required this.province,
      required this.barbershopUID,
      required this.barbershopName,
      required this.isAvailableToHome});

  factory Barber.fromJson(Map<String, Object?> json) => _$BarberFromJson(json);
  Map<String, Object?> toJson() => _$BarberToJson(this);
}

@Collection<Barber>('barbers')
final barebrsRef = BarberCollectionReference();
