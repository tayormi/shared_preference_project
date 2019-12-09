import 'package:flutter/material.dart';
import 'package:shared_preference_project/utils/storageUtil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var savedString = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shared Preferences'),
      ),
      body: Container(
        padding: EdgeInsets.all(20).add(EdgeInsets.only(top: 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                StorageUtil.putString("myString", "My stored string in shared preferences");
              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Save String",
              ),
            ),
            Text(savedString, style: TextStyle(color: Colors.black),),
            SizedBox(height: 60,),
            RaisedButton(
              onPressed: (){
                setState(() {
                  savedString = StorageUtil.getString("myString");
                });
              },
              textColor: Colors.white,
              color: Colors.red,
              padding: const EdgeInsets.all(8.0),
              child: new Text(
                "Get String",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
