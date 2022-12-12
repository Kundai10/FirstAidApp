import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medi_help/Pages/home_page.dart';
import 'package:medi_help/Pages/login.dart';
import 'package:medi_help/authentication/auth_page.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return HomePage();
              } else if (snapshot.hasError) {
                return Center(
                    child: Text("Something went wrong",
                        style: TextStyle(color: Colors.black)));
              } else {
                return AuthPage();
              }
            }));
  }
}
