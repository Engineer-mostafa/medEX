//dart

//packages
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './login_screen.dart';

class SplaashScreen extends StatefulWidget {
  @override
  _SplaashScreenState createState() => _SplaashScreenState();
}

class _SplaashScreenState extends State<SplaashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Builder(
                  builder:(context)=> SplashScreen(
            seconds: 5,
            navigateAfterSeconds:Login(),
            title: new Text(
              'Welcome In SplashScreen',
              style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
            ),
            image: new Image.network('https://i.imgur.com/TyCSG9A.png'),
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: new TextStyle(),
            photoSize: 100.0,
            onClick: () => print("Flutter Egypt"),
            loaderColor: Colors.blue,
            loadingText: Text("Medical History..."),

          ),
        ),
      ),
    );
  }
}
