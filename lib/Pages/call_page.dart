import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          SizedBox(height:20),
          Text("Emergency Rwandan Toll Free Numbers", style: TextStyle(fontSize: 18),),
          Image.asset('assets/medi_help_logo.png'),
          Row(
            children: [
              SizedBox(width:40),
              Text("Police", style: TextStyle(fontSize: 20,),),
              SizedBox(width:100),
              Icon(Icons.phone),
              SizedBox(width:10),
              Text("113", style: TextStyle(fontSize: 24)),
            ],
          ),
          SizedBox(height:50),

          Row(
            children: [
              SizedBox(width:40),
              Text("Ambulance", style: TextStyle(fontSize: 20),),
              SizedBox(width:60),
              Icon(Icons.phone),
              SizedBox(width:10),
              Text("112", style: TextStyle(fontSize: 24)),
            ],
          ),
          SizedBox(height:50),

          Row(
            children: [
              SizedBox(width: 40,),
              Text("Fire Brigrade", style: TextStyle(fontSize: 20),),
              SizedBox(width:55),
              Icon(Icons.phone),
              SizedBox(width:10),
              Text("111", style: TextStyle(fontSize: 24)),

            ],
          ),
        ],
      ),
    );
  }
}
