import 'package:flutter/material.dart';



import './Views/firstPage.dart';
import './Views/secondPage.dart';
import './Views/thirdPage.dart';
import './Views/testRoute.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      // routes: {
      //   'test_page': (context) => WillPopScopeTestRoute(),
      //   '/home': (context) => MyHomePage()
      //   },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context){
          String routename = settings.name;
          switch (routename) {
            case 'test_page':
            print('object');
              return WillPopScopeTestRoute();
            case '/home':
              return MyHomePage();
            default:
              break;
          }
        });
      },
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


