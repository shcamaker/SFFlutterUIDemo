import 'package:flutter/material.dart';
import '../components/mylist.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('界面1')),
        body: Container(child: MyList(),));
  }
}


