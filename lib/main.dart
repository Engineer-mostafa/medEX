//Packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medEX/views/splash_screen.dart';

import 'package:medEX/provider/google_signin.dart';
import 'package:provider/provider.dart';

//screens
import './views/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //sharedprefrences

  //if the user signed in before render home screen automaticly
  runApp(SplaashScreen());
}

class Home extends StatelessWidget {
  static const rout = "/home";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          routes: {
            "/login": (context) => Login(),
            "/home": (context) => Home(),
          },
        ));
  }
}


