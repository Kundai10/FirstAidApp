import 'package:flutter/material.dart';

import '../first_aid_list.dart';
import 'first_aid_details.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // a function to search and filter the list
  void updateList(String value) {
    setState((){
      displayedList = firstaidList.where((element) => element.ailment.toLowerCase().contains(value.toLowerCase())).toList();

    }

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "eg: Choking",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.deepOrange,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: displayedList.length,
                itemBuilder: (context, index) =>

                    ListTile(
                  contentPadding: EdgeInsets.all(8.0),
                  title: Text(
                    displayedList[index].ailment,
                    style: TextStyle(fontSize: 19),
                  ),
                  leading: Image.asset(displayedList[index].ailment_image_url),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.deepPurple,),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> FirstAidDetails(firstAidList: displayedList[index],)));

                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
