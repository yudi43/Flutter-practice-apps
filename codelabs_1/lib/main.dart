import 'package:flutter/material.dart';
import 'package:codelabs_1/HomeView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Start-Up Name Generator",
      theme: ThemeData(primaryColor: Colors.white),
      home: HomeView(),
    );
  }
}