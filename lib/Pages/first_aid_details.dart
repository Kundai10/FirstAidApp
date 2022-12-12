import 'package:flutter/material.dart';
import 'package:medi_help/first_aid_list.dart';

import '../first_aid_list.dart';

class FirstAidDetails extends StatelessWidget {
  final FirstAidList firstAidList;
  const FirstAidDetails({Key? key, required this.firstAidList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(firstAidList.ailment),


      ),
      body:
      Column(
        children: [
          Image.asset(firstAidList.ailment_image_url, height: 400,),
          SizedBox(height: 10),
          Text(firstAidList.description, style: TextStyle(fontSize: 18),),
        ],
      ),
    );
  }
}
