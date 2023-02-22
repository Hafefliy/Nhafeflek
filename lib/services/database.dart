// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nhafeflek/models/barberModel.dart';
import 'package:nhafeflek/models/customer.dart';

class DatabaseService {
  final String uid;
  DatabaseService({required this.uid});
  FirebaseFirestore? _instance;

  // collection reference
  final CollectionReference barberCollection =
      FirebaseFirestore.instance.collection('barbers');
      final CollectionReference barbershopCollection =
      FirebaseFirestore.instance.collection('barbershops');

  Future setBarberData(Barber barber) async {
    return await barberCollection.doc(uid).set({
      'barberUID': uid,
      'firstname': barber.firstname,
      'lastname': barber.lastname,
      'age': barber.age,
      'province': barber.province,
      'phoneNumber': barber.phoneNumber,
      'bio': barber.bio,
      'rating': barber.rating,
      'instagram': barber.instagram,
      'verified': barber.verified,
      'workingHours': barber.workingHours,
      'haircutsDone': barber.haircutsDone,
      'barbershopName': '',
      'barbershopUID': '',
      'isAvailableToHome': false,
      'experience': 0,
    });
  }

  Future updateBarberData(Barber barber) async {
    await barberCollection.doc(uid).update({
      'firstname': barber.firstname,
      'lastname': barber.lastname,
      'province': barber.province,
      'phoneNumber': barber.phoneNumber,
      'instagram': barber.instagram,
      'workingHours': barber.workingHours,
      'isAvailableToHome': barber.isAvailableToHome
    });

    await barbershopCollection.doc(barber.barbershopUID).collection('barbers').doc(uid).update({
      'firstname': barber.firstname,
      'lastname': barber.lastname,
      'province': barber.province,
      'phoneNumber': barber.phoneNumber,
      'instagram': barber.instagram,
      'workingHours': barber.workingHours,
      'isAvailableToHome': barber.isAvailableToHome
    });
  }

  Future getUsersData() async {
    List itemsList = [];
    try {
      await barberCollection.get().then((querySnapshot) {
        for (var element in querySnapshot.docs) {
          itemsList.add(element.data);
        }
      });
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future updateOrder(
      Customer customer) async {
    _instance = FirebaseFirestore.instance;
    CollectionReference userCollection = _instance!.collection('users');
    DocumentSnapshot userData = await userCollection.doc(customer.userUID).get();
    var data = userData.data() as Map<String, dynamic>;

    CollectionReference userOrderCollection =
        _instance!.collection('users').doc(customer.userUID).collection('orders');

    CollectionReference barbersOrdersCollection =
        _instance!.collection('barbers').doc(uid).collection('orders');

    CollectionReference barbershopsBarbersOrdersCollection = _instance!
        .collection('barbershops')
        .doc(customer.barbershopUID)
        .collection('barbers')
        .doc(uid)
        .collection('orders');

    await userOrderCollection.doc(customer.orderUID).update({
      'userUID': customer.userUID,
      'barbershopUID': customer.barbershopUID,
      'barberUID': uid,
      'firstname': data['firstname'],
      'lastname': data['lastname'],
      'time': customer.time,
      'date': customer.date,
      'isConfirmed': true,
      'orderUID': customer.orderUID,
      'isFade': customer.isFade,
      'isRazor': customer.isRazor,
      'isScissors': customer.isScissors,
      'isBeard': customer.isBeard,
      'isHairdryer': customer.isHairdryer,
      'isStraightener': customer.isStraightener,
      'isAtHome': customer.isAtHome,
      'price': customer.price,
      'isCanceled': customer.isCanceled,
      'isPayed': customer.isPayed
    });
    await barbersOrdersCollection.doc(customer.orderUID).update({
      'userUID': customer.userUID,
      'barbershopUID': customer.barbershopUID,
      'barberUID': uid,
      'firstname': data['firstname'],
      'lastname': data['lastname'],
      'time': customer.time,
      'date': customer.date,
      'isConfirmed': true,
      'orderUID': customer.orderUID,
      'isFade': customer.isFade,
      'isRazor': customer.isRazor,
      'isScissors': customer.isScissors,
      'isBeard': customer.isBeard,
      'isHairdryer': customer.isHairdryer,
      'isStraightener': customer.isStraightener,
      'isAtHome': customer.isAtHome,
      'price': customer.price,
      'isCanceled': customer.isCanceled,
      'isPayed': customer.isPayed
    });
    await barbershopsBarbersOrdersCollection.doc(customer.orderUID).update({
      'userUID': customer.userUID,
      'barbershopUID': customer.barbershopUID,
      'barberUID': uid,
      'firstname': data['firstname'],
      'lastname': data['lastname'],
      'time': customer.time,
      'date': customer.date,
      'isConfirmed': true,
      'orderUID': customer.orderUID,
      'isFade': customer.isFade,
      'isRazor': customer.isRazor,
      'isScissors': customer.isScissors,
      'isBeard': customer.isBeard,
      'isHairdryer': customer.isHairdryer,
      'isStraightener': customer.isStraightener,
      'isAtHome': customer.isAtHome,
      'price': customer.price,
      'isCanceled': customer.isCanceled,
      'isPayed': customer.isPayed
    });
  }
}
