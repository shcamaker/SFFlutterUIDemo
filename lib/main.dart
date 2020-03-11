import 'package:flutter/material.dart';
import './Views/firstPage.dart';
import './Views/secondPage.dart';
import './Views/thirdPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: _controller, children: <Widget>[
         FirstPage(),
         SecondPage(),
         ThirdPage()
      ]),
      bottomNavigationBar: Material(color: Colors.orangeAccent,child: TabBar(controller: _controller,tabs: <Widget>[
         Tab(text: '首页', icon: Icon(Icons.home)),
         Tab(text: '通知', icon: Icon(Icons.message)),
         Tab(text: '我的', icon: Icon(Icons.cloud))
      ]))
    );
  }
}


