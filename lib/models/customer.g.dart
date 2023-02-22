// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class BarberCollectionReference
    implements BarberQuery, FirestoreCollectionReference<BarberQuerySnapshot> {
  factory BarberCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$BarberCollectionReference;

  static Barber fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Barber.fromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Barber value,
    SetOptions? options,
  ) {
    return value.toJson();
  }

  @override
  BarberDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<BarberDocumentReference> add(Barber value);
}

class _$BarberCollectionReference extends _$BarberQuery
    implements BarberCollectionReference {
  factory _$BarberCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$BarberCollectionReference._(
      firestore.collection('barbers').withConverter(
            fromFirestore: BarberCollectionReference.fromFirestore,
            toFirestore: BarberCollectionReference.toFirestore,
          ),
    );
  }

  _$BarberCollectionReference._(
    CollectionReference<Barber> reference,
  ) : super(reference, reference);

  String get path => reference.path;

  @override
  CollectionReference<Barber> get reference =>
      super.reference as CollectionReference<Barber>;

  @override
  BarberDocumentReference doc([String? id]) {
    return BarberDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<BarberDocumentReference> add(Barber value) {
    return reference.add(value).then((ref) => BarberDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$BarberCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class BarberDocumentReference
    extends FirestoreDocumentReference<BarberDocumentSnapshot> {
  factory BarberDocumentReference(DocumentReference<Barber> reference) =
      _$BarberDocumentReference;

  DocumentReference<Barber> get reference;

  /// A reference to the [BarberCollectionReference] containing this document.
  BarberCollectionReference get parent {
    return _$BarberCollectionReference(reference.firestore);
  }

  late final CustomerCollectionReference orders = _$CustomerCollectionReference(
    reference,
  );

  @override
  Stream<BarberDocumentSnapshot> snapshots();

  @override
  Future<BarberDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String barberUID,
    String firstname,
    String lastname,
    String phoneNumber,
    String bio,
    int age,
    String province,
    int experience,
    double rating,
    String instagram,
    String workingHours,
    int haircutsDone,
    bool verified,
    String barbershopUID,
    String barbershopName,
    bool isAvailableToHome,
  });

  Future<void> set(Barber value);
}

class _$BarberDocumentReference
    extends FirestoreDocumentReference<BarberDocumentSnapshot>
    implements BarberDocumentReference {
  _$BarberDocumentReference(this.reference);

  @override
  final DocumentReference<Barber> reference;

  /// A reference to the [BarberCollectionReference] containing this document.
  BarberCollectionReference get parent {
    return _$BarberCollectionReference(reference.firestore);
  }

  late final CustomerCollectionReference orders = _$CustomerCollectionReference(
    reference,
  );

  @override
  Stream<BarberDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return BarberDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<BarberDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return BarberDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? barberUID = _sentinel,
    Object? firstname = _sentinel,
    Object? lastname = _sentinel,
    Object? phoneNumber = _sentinel,
    Object? bio = _sentinel,
    Object? age = _sentinel,
    Object? province = _sentinel,
    Object? experience = _sentinel,
    Object? rating = _sentinel,
    Object? instagram = _sentinel,
    Object? workingHours = _sentinel,
    Object? haircutsDone = _sentinel,
    Object? verified = _sentinel,
    Object? barbershopUID = _sentinel,
    Object? barbershopName = _sentinel,
    Object? isAvailableToHome = _sentinel,
  }) async {
    final json = {
      if (barberUID != _sentinel) "barberUID": barberUID as String,
      if (firstname != _sentinel) "firstname": firstname as String,
      if (lastname != _sentinel) "lastname": lastname as String,
      if (phoneNumber != _sentinel) "phoneNumber": phoneNumber as String,
      if (bio != _sentinel) "bio": bio as String,
      if (age != _sentinel) "age": age as int,
      if (province != _sentinel) "province": province as String,
      if (experience != _sentinel) "experience": experience as int,
      if (rating != _sentinel) "rating": rating as double,
      if (instagram != _sentinel) "instagram": instagram as String,
      if (workingHours != _sentinel) "workingHours": workingHours as String,
      if (haircutsDone != _sentinel) "haircutsDone": haircutsDone as int,
      if (verified != _sentinel) "verified": verified as bool,
      if (barbershopUID != _sentinel) "barbershopUID": barbershopUID as String,
      if (barbershopName != _sentinel)
        "barbershopName": barbershopName as String,
      if (isAvailableToHome != _sentinel)
        "isAvailableToHome": isAvailableToHome as bool,
    };

    return reference.update(json);
  }

  Future<void> set(Barber value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is BarberDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class BarberDocumentSnapshot extends FirestoreDocumentSnapshot {
  BarberDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Barber> snapshot;

  @override
  BarberDocumentReference get reference {
    return BarberDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Barber? data;
}

abstract class BarberQuery implements QueryReference<BarberQuerySnapshot> {
  @override
  BarberQuery limit(int limit);

  @override
  BarberQuery limitToLast(int limit);

  BarberQuery whereBarberUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereFirstname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereLastname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereBio({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  BarberQuery whereProvince({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereExperience({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  BarberQuery whereRating({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  });
  BarberQuery whereInstagram({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereWorkingHours({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereHaircutsDone({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });
  BarberQuery whereVerified({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  BarberQuery whereBarbershopUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereBarbershopName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  BarberQuery whereIsAvailableToHome({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });

  BarberQuery orderByBarberUID({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByFirstname({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByLastname({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByPhoneNumber({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByBio({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByAge({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByProvince({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByExperience({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByRating({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByInstagram({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByWorkingHours({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByHaircutsDone({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByVerified({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByBarbershopUID({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByBarbershopName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });

  BarberQuery orderByIsAvailableToHome({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  });
}

class _$BarberQuery extends QueryReference<BarberQuerySnapshot>
    implements BarberQuery {
  _$BarberQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Barber> reference;

  BarberQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Barber> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return BarberQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<BarberDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: BarberDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return BarberQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<BarberQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<BarberQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  BarberQuery limit(int limit) {
    return _$BarberQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  BarberQuery limitToLast(int limit) {
    return _$BarberQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  BarberQuery whereBarberUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'barberUID',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereFirstname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'firstname',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereLastname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'lastname',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery wherePhoneNumber({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'phoneNumber',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereBio({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'bio',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereAge({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'age',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereProvince({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'province',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereExperience({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'experience',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereRating({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    bool? isNull,
    List<double>? whereIn,
    List<double>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'rating',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereInstagram({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'instagram',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereWorkingHours({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'workingHours',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereHaircutsDone({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'haircutsDone',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereVerified({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'verified',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereBarbershopUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'barbershopUID',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereBarbershopName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'barbershopName',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery whereIsAvailableToHome({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$BarberQuery(
      reference.where(
        'isAvailableToHome',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  BarberQuery orderByBarberUID({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('barberUID', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByFirstname({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('firstname', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByLastname({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('lastname', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByPhoneNumber({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('phoneNumber', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByBio({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('bio', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByAge({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('age', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByProvince({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('province', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByExperience({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('experience', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByRating({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('rating', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByInstagram({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('instagram', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByWorkingHours({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('workingHours', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByHaircutsDone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('haircutsDone', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByVerified({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('verified', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByBarbershopUID({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('barbershopUID', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByBarbershopName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('barbershopName', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  BarberQuery orderByIsAvailableToHome({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    BarberDocumentSnapshot? startAtDocument,
    BarberDocumentSnapshot? endAtDocument,
    BarberDocumentSnapshot? endBeforeDocument,
    BarberDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isAvailableToHome', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$BarberQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$BarberQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class BarberQuerySnapshot
    extends FirestoreQuerySnapshot<BarberQueryDocumentSnapshot> {
  BarberQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Barber> snapshot;

  @override
  final List<BarberQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<BarberDocumentSnapshot>> docChanges;
}

class BarberQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements BarberDocumentSnapshot {
  BarberQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Barber> snapshot;

  @override
  BarberDocumentReference get reference {
    return BarberDocumentReference(snapshot.reference);
  }

  @override
  final Barber data;
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class CustomerCollectionReference
    implements
        CustomerQuery,
        FirestoreCollectionReference<CustomerQuerySnapshot> {
  factory CustomerCollectionReference(
    DocumentReference<Barber> parent,
  ) = _$CustomerCollectionReference;

  static Customer fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return _$CustomerFromJson(snapshot.data()!);
  }

  static Map<String, Object?> toFirestore(
    Customer value,
    SetOptions? options,
  ) {
    return _$CustomerToJson(value);
  }

  /// A reference to the containing [BarberDocumentReference] if this is a subcollection.
  BarberDocumentReference get parent;

  @override
  CustomerDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<CustomerDocumentReference> add(Customer value);
}

class _$CustomerCollectionReference extends _$CustomerQuery
    implements CustomerCollectionReference {
  factory _$CustomerCollectionReference(
    DocumentReference<Barber> parent,
  ) {
    return _$CustomerCollectionReference._(
      BarberDocumentReference(parent),
      parent.collection('orders').withConverter(
            fromFirestore: CustomerCollectionReference.fromFirestore,
            toFirestore: CustomerCollectionReference.toFirestore,
          ),
    );
  }

  _$CustomerCollectionReference._(
    this.parent,
    CollectionReference<Customer> reference,
  ) : super(reference, reference);

  @override
  final BarberDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Customer> get reference =>
      super.reference as CollectionReference<Customer>;

  @override
  CustomerDocumentReference doc([String? id]) {
    return CustomerDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<CustomerDocumentReference> add(Customer value) {
    return reference.add(value).then((ref) => CustomerDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomerCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class CustomerDocumentReference
    extends FirestoreDocumentReference<CustomerDocumentSnapshot> {
  factory CustomerDocumentReference(DocumentReference<Customer> reference) =
      _$CustomerDocumentReference;

  DocumentReference<Customer> get reference;

  /// A reference to the [CustomerCollectionReference] containing this document.
  CustomerCollectionReference get parent {
    return _$CustomerCollectionReference(
      reference.parent.parent!.withConverter<Barber>(
        fromFirestore: BarberCollectionReference.fromFirestore,
        toFirestore: BarberCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomerDocumentSnapshot> snapshots();

  @override
  Future<CustomerDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  Future<void> update({
    String userUID,
    String barberUID,
    String barbershopUID,
    String firstname,
    String lastname,
    String time,
    String date,
    bool isConfirmed,
    String orderUID,
    bool isFade,
    bool isRazor,
    bool isScissors,
    bool isBeard,
    bool isHairdryer,
    bool isStraightener,
    bool isAtHome,
    bool isCanceled,
    bool isPayed,
    int price,
  });

  Future<void> set(Customer value);
}

class _$CustomerDocumentReference
    extends FirestoreDocumentReference<CustomerDocumentSnapshot>
    implements CustomerDocumentReference {
  _$CustomerDocumentReference(this.reference);

  @override
  final DocumentReference<Customer> reference;

  /// A reference to the [CustomerCollectionReference] containing this document.
  CustomerCollectionReference get parent {
    return _$CustomerCollectionReference(
      reference.parent.parent!.withConverter<Barber>(
        fromFirestore: BarberCollectionReference.fromFirestore,
        toFirestore: BarberCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<CustomerDocumentSnapshot> snapshots() {
    return reference.snapshots().map((snapshot) {
      return CustomerDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<CustomerDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then((snapshot) {
      return CustomerDocumentSnapshot._(
        snapshot,
        snapshot.data(),
      );
    });
  }

  @override
  Future<void> delete() {
    return reference.delete();
  }

  Future<void> update({
    Object? userUID = _sentinel,
    Object? barberUID = _sentinel,
    Object? barbershopUID = _sentinel,
    Object? firstname = _sentinel,
    Object? lastname = _sentinel,
    Object? time = _sentinel,
    Object? date = _sentinel,
    Object? isConfirmed = _sentinel,
    Object? orderUID = _sentinel,
    Object? isFade = _sentinel,
    Object? isRazor = _sentinel,
    Object? isScissors = _sentinel,
    Object? isBeard = _sentinel,
    Object? isHairdryer = _sentinel,
    Object? isStraightener = _sentinel,
    Object? isAtHome = _sentinel,
    Object? isCanceled = _sentinel,
    Object? isPayed = _sentinel,
    Object? price = _sentinel,
  }) async {
    final json = {
      if (userUID != _sentinel) "userUID": userUID as String,
      if (barberUID != _sentinel) "barberUID": barberUID as String,
      if (barbershopUID != _sentinel) "barbershopUID": barbershopUID as String,
      if (firstname != _sentinel) "firstname": firstname as String,
      if (lastname != _sentinel) "lastname": lastname as String,
      if (time != _sentinel) "time": time as String,
      if (date != _sentinel) "date": date as String,
      if (isConfirmed != _sentinel) "isConfirmed": isConfirmed as bool,
      if (orderUID != _sentinel) "orderUID": orderUID as String,
      if (isFade != _sentinel) "isFade": isFade as bool,
      if (isRazor != _sentinel) "isRazor": isRazor as bool,
      if (isScissors != _sentinel) "isScissors": isScissors as bool,
      if (isBeard != _sentinel) "isBeard": isBeard as bool,
      if (isHairdryer != _sentinel) "isHairdryer": isHairdryer as bool,
      if (isStraightener != _sentinel) "isStraightener": isStraightener as bool,
      if (isAtHome != _sentinel) "isAtHome": isAtHome as bool,
      if (isCanceled != _sentinel) "isCanceled": isCanceled as bool,
      if (isPayed != _sentinel) "isPayed": isPayed as bool,
      if (price != _sentinel) "price": price as int,
    };

    return reference.update(json);
  }

  Future<void> set(Customer value) {
    return reference.set(value);
  }

  @override
  bool operator ==(Object other) {
    return other is CustomerDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

class CustomerDocumentSnapshot extends FirestoreDocumentSnapshot {
  CustomerDocumentSnapshot._(
    this.snapshot,
    this.data,
  );

  @override
  final DocumentSnapshot<Customer> snapshot;

  @override
  CustomerDocumentReference get reference {
    return CustomerDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Customer? data;
}

abstract class CustomerQuery implements QueryReference<CustomerQuerySnapshot> {
  @override
  CustomerQuery limit(int limit);

  @override
  CustomerQuery limitToLast(int limit);

  CustomerQuery whereUserUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereBarberUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereBarbershopUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereFirstname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereLastname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereTime({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereDate({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereIsConfirmed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereOrderUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  });
  CustomerQuery whereIsFade({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsRazor({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsScissors({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsBeard({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsHairdryer({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsStraightener({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsAtHome({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsCanceled({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery whereIsPayed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  });
  CustomerQuery wherePrice({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  });

  CustomerQuery orderByUserUID({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByBarberUID({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByBarbershopUID({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByFirstname({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByLastname({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByTime({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByDate({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsConfirmed({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByOrderUID({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsFade({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsRazor({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsScissors({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsBeard({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsHairdryer({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsStraightener({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsAtHome({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsCanceled({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByIsPayed({
    bool descending = false,
    bool startAt,
    bool startAfter,
    bool endAt,
    bool endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });

  CustomerQuery orderByPrice({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  });
}

class _$CustomerQuery extends QueryReference<CustomerQuerySnapshot>
    implements CustomerQuery {
  _$CustomerQuery(
    this.reference,
    this._collection,
  );

  final CollectionReference<Object?> _collection;

  @override
  final Query<Customer> reference;

  CustomerQuerySnapshot _decodeSnapshot(
    QuerySnapshot<Customer> snapshot,
  ) {
    final docs = snapshot.docs.map((e) {
      return CustomerQueryDocumentSnapshot._(e, e.data());
    }).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return FirestoreDocumentChange<CustomerDocumentSnapshot>(
        type: change.type,
        oldIndex: change.oldIndex,
        newIndex: change.newIndex,
        doc: CustomerDocumentSnapshot._(change.doc, change.doc.data()),
      );
    }).toList();

    return CustomerQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  @override
  Stream<CustomerQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(_decodeSnapshot);
  }

  @override
  Future<CustomerQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(_decodeSnapshot);
  }

  @override
  CustomerQuery limit(int limit) {
    return _$CustomerQuery(
      reference.limit(limit),
      _collection,
    );
  }

  @override
  CustomerQuery limitToLast(int limit) {
    return _$CustomerQuery(
      reference.limitToLast(limit),
      _collection,
    );
  }

  CustomerQuery whereUserUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'userUID',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereBarberUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'barberUID',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereBarbershopUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'barbershopUID',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereFirstname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'firstname',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereLastname({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'lastname',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereTime({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'time',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereDate({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'date',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsConfirmed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isConfirmed',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereOrderUID({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    bool? isNull,
    List<String>? whereIn,
    List<String>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'orderUID',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsFade({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isFade',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsRazor({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isRazor',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsScissors({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isScissors',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsBeard({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isBeard',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsHairdryer({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isHairdryer',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsStraightener({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isStraightener',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsAtHome({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isAtHome',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsCanceled({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isCanceled',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery whereIsPayed({
    bool? isEqualTo,
    bool? isNotEqualTo,
    bool? isLessThan,
    bool? isLessThanOrEqualTo,
    bool? isGreaterThan,
    bool? isGreaterThanOrEqualTo,
    bool? isNull,
    List<bool>? whereIn,
    List<bool>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'isPayed',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery wherePrice({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    bool? isNull,
    List<int>? whereIn,
    List<int>? whereNotIn,
  }) {
    return _$CustomerQuery(
      reference.where(
        'price',
        isEqualTo: isEqualTo,
        isNotEqualTo: isNotEqualTo,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        isNull: isNull,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
      ),
      _collection,
    );
  }

  CustomerQuery orderByUserUID({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('userUID', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByBarberUID({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('barberUID', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByBarbershopUID({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('barbershopUID', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByFirstname({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('firstname', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByLastname({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('lastname', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByTime({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('time', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('date', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsConfirmed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isConfirmed', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByOrderUID({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('orderUID', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsFade({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isFade', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsRazor({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isRazor', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsScissors({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isScissors', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsBeard({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isBeard', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsHairdryer({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isHairdryer', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsStraightener({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isStraightener', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsAtHome({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isAtHome', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsCanceled({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isCanceled', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByIsPayed({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('isPayed', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  CustomerQuery orderByPrice({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    CustomerDocumentSnapshot? startAtDocument,
    CustomerDocumentSnapshot? endAtDocument,
    CustomerDocumentSnapshot? endBeforeDocument,
    CustomerDocumentSnapshot? startAfterDocument,
  }) {
    var query = reference.orderBy('price', descending: descending);

    if (startAtDocument != null) {
      query = query.startAtDocument(startAtDocument.snapshot);
    }
    if (startAfterDocument != null) {
      query = query.startAfterDocument(startAfterDocument.snapshot);
    }
    if (endAtDocument != null) {
      query = query.endAtDocument(endAtDocument.snapshot);
    }
    if (endBeforeDocument != null) {
      query = query.endBeforeDocument(endBeforeDocument.snapshot);
    }

    if (startAt != _sentinel) {
      query = query.startAt([startAt]);
    }
    if (startAfter != _sentinel) {
      query = query.startAfter([startAfter]);
    }
    if (endAt != _sentinel) {
      query = query.endAt([endAt]);
    }
    if (endBefore != _sentinel) {
      query = query.endBefore([endBefore]);
    }

    return _$CustomerQuery(query, _collection);
  }

  @override
  bool operator ==(Object other) {
    return other is _$CustomerQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class CustomerQuerySnapshot
    extends FirestoreQuerySnapshot<CustomerQueryDocumentSnapshot> {
  CustomerQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  final QuerySnapshot<Customer> snapshot;

  @override
  final List<CustomerQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<CustomerDocumentSnapshot>> docChanges;
}

class CustomerQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot
    implements CustomerDocumentSnapshot {
  CustomerQueryDocumentSnapshot._(this.snapshot, this.data);

  @override
  final QueryDocumentSnapshot<Customer> snapshot;

  @override
  CustomerDocumentReference get reference {
    return CustomerDocumentReference(snapshot.reference);
  }

  @override
  final Customer data;
}

// **************************************************************************
// ValidatorGenerator
// **************************************************************************

_$assertCustomer(Customer instance) {
  const Min(200).validate(instance.price, "price");
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      barberUID: json['barberUID'] as String,
      barbershopUID: json['barbershopUID'] as String,
      userUID: json['userUID'] as String,
      orderUID: json['orderUID'] as String,
      isFade: json['isFade'] as bool,
      isRazor: json['isRazor'] as bool,
      isScissors: json['isScissors'] as bool,
      isBeard: json['isBeard'] as bool,
      isHairdryer: json['isHairdryer'] as bool,
      isStraightener: json['isStraightener'] as bool,
      isAtHome: json['isAtHome'] as bool,
      price: json['price'] as int,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      time: json['time'] as String,
      date: json['date'] as String,
      isConfirmed: json['isConfirmed'] as bool,
      isCanceled: json['isCanceled'] as bool,
      isPayed: json['isPayed'] as bool,
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'userUID': instance.userUID,
      'barberUID': instance.barberUID,
      'barbershopUID': instance.barbershopUID,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'time': instance.time,
      'date': instance.date,
      'isConfirmed': instance.isConfirmed,
      'orderUID': instance.orderUID,
      'isFade': instance.isFade,
      'isRazor': instance.isRazor,
      'isScissors': instance.isScissors,
      'isBeard': instance.isBeard,
      'isHairdryer': instance.isHairdryer,
      'isStraightener': instance.isStraightener,
      'isAtHome': instance.isAtHome,
      'isCanceled': instance.isCanceled,
      'isPayed': instance.isPayed,
      'price': instance.price,
    };
