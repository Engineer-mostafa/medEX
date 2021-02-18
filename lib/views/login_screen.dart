import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static const rout = "/login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Align(
          alignment:
              Alignment(mediaquery.width * 0.0001, mediaquery.height * 0.001),
          child: Container(
            child: RaisedButton(
              child: Text("Login"),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
