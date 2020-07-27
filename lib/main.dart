import 'package:flutter/material.dart';
import 'package:shared_preference_project/home.dart';
import 'package:shared_preference_project/utils/storageUtil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await StorageUtil.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Preferences',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

