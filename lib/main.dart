import 'package:fltr_mockito_null_safety/locator.dart';
import 'package:fltr_mockito_null_safety/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
