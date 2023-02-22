import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:nhafeflek/models/barberModel.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

part 'customer.g.dart';

@JsonSerializable(explicitToJson: true)
class Customer {
  final String userUID;
  final String barberUID;
  final String barbershopUID;
  final String firstname;
  final String lastname;
  String time;
  String date;
  bool isConfirmed;
  String orderUID;
  bool isFade;
  bool isRazor;
  bool isScissors;
  bool isBeard;
  bool isHairdryer;
  bool isStraightener;
  bool isAtHome;
  bool isCanceled;
  bool isPayed;
  @Min(200)
  int price;

  Customer(
      {required this.barberUID,
      required this.barbershopUID,
      required this.userUID,
      required this.orderUID,
      required this.isFade,
      required this.isRazor,
      required this.isScissors,
      required this.isBeard,
      required this.isHairdryer,
      required this.isStraightener,
      required this.isAtHome,
      required this.price,
      required this.firstname,
      required this.lastname,
      required this.time,
      required this.date,
      required this.isConfirmed,
      required this.isCanceled,
      required this.isPayed
      });
}

@Collection<Barber>('barbers')
@Collection<Customer>('barbers/*/orders')
final barebrsRef = BarberCollectionReference();
