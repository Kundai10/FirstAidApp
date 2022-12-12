import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'authentication/main_page.dart';




void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
      home: MainPage(),
    theme: ThemeData(primarySwatch: Colors.deepPurple),
  )

  );}