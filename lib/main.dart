//Packages
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:medEX/provider/google_signin.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) =>GoogleSignInProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("sign up with google"),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                RaisedButton(
                  onPressed: () async {
                    Provider.of<GoogleSignInProvider>(context, listen: false)
                        .login();
                  },
                  child: Text("sign up with google"),
                ),
                RaisedButton(
                  onPressed: () async {
                      Provider.of<GoogleSignInProvider>(context, listen: false)
                        .logout();
                  },
                  child: Text("sign out"),
                ),
              ],
            ),
          ),
        ));
  }
}
