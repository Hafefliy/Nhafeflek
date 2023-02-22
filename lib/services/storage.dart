import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

import 'auth.dart';
import 'locator.dart';

class StorageService {
  FirebaseStorage storage = FirebaseStorage.instance;

  
  Future<String> uploadFile(File file) async {
    final AuthService authService = locator.get<AuthService>();
    var user = await authService.getUser();
    var uid = user.uid;

    var storageRef = storage.ref().child("user/profile/$uid");
    var uploadTask = storageRef.putFile(file);
    String downloadUrl = await (await uploadTask).ref.getDownloadURL();
    return downloadUrl;
  }

  Future<String> getUserProfileImageDownloadUrl(String uid) async {
    return await storage.ref().child("user/profile/$uid").getDownloadURL();
  }
}