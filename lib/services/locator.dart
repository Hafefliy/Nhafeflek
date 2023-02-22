import 'package:get_it/get_it.dart';
import 'package:nhafeflek/services/auth.dart';
import 'package:nhafeflek/services/storage.dart';

var locator = GetIt.instance;

Future<void> setupServices() async {
  locator.registerSingleton<AuthService>(AuthService());
  locator.registerSingleton<StorageService>(StorageService());
}