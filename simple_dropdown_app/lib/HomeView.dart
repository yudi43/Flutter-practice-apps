import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  String dropDownValue = 'one';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drop Down"),
      ),
      body: Center(
        child: DropdownButton<String>(
          value: dropDownValue,
          onChanged: (String newValue) {
            setState(() {
              dropDownValue = newValue;
            });
          },
          items: <String>['one', 'two', 'three', 'four']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
