// ignore_for_file: avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nhafeflek/firebase_options.dart';
import 'package:nhafeflek/localization/app_localization.dart';
import 'package:nhafeflek/provider/current_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'models/user.dart';
import 'services/auth.dart';
import 'services/database.dart';
import 'wrapper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp((MultiProvider(providers: [
    Provider(
        create: (_) =>
            DatabaseService(uid: FirebaseAuth.instance.currentUser!.uid)),
    // Provider(create: (_) => UserController())
  ], child: MyApp())));
}

class MyApp extends StatelessWidget {
  final CurrentData currentData = CurrentData();

  MyApp({Key? key}) : super(key: key);   

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CurrentData(),
        child: Consumer<CurrentData>(builder: (context, provider, child) {
          return StreamProvider<Userr?>.value(
              value: AuthService().user,
              initialData: Userr(uid: null),
              child: MaterialApp(
                localizationsDelegates: const [
                  AppLocalizationDelegate(),
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en'),
                  Locale('ar'),
                  Locale('fr')
                ],
                theme: ThemeData(
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                ),
                debugShowCheckedModeBanner: newMethod,
                home: const Wrapper(),
              ));
        }));
  }

  bool get newMethod => false;
}
