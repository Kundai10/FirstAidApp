import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:medi_help/Pages/search_page.dart';
import 'package:medi_help/Pages/sign_out.dart';


import 'call_page.dart';
import 'login.dart';
import 'nearest_hospital.dart';
// this is the page the user sees once they have signed in

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Home",
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          selectedStyle: TextStyle(),
        ),
        SearchPage(),

      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Call Emergency Service",
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          selectedStyle: TextStyle(),
        ),
        CallPage(),

      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: "Nearest Hospital",
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          selectedStyle: TextStyle(),
        ),
        NearestHospital(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          onTap: (){
            FirebaseAuth.instance.signOut();
          },
          name: "Sign Out",
          baseStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          ),
          selectedStyle: TextStyle(),
        ),
        SignOut(),

      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        backgroundColorMenu: Colors.deepPurple,
        initPositionSelected: 0,
        slidePercent: 60,
        contentCornerRadius: 50,
    );
  }
}
