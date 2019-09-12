import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  List<String> _items = ["Jack", "Pack", "Tack", "Lack", "Mack"];
  String _initialValue;
  List<DropdownMenuItem<String>> listOfItems = new List();

  void _whenChanged(String newItem) {
    setState(() {
      _initialValue = newItem;
    });
  }

  List<DropdownMenuItem<String>> _buildAndGetList(List<String> items) {
    List<DropdownMenuItem<String>> finalList = List();
    for (String u in items) {
      finalList.add(DropdownMenuItem(
        value: u,
        child: Text(u),
      ));
    }
    return finalList;
  }

  @override
  void initState() {
    // TODO: implement initState
    _initialValue = _items[0];
    listOfItems = _buildAndGetList(_items);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text("This is to test DropDown Button"),
        ),
        body: Center(
          child: DropdownButton(
            value: _initialValue,
            onChanged: _whenChanged,
            items: listOfItems,
          ),
        ),
      ),
    );
  }
}
