import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index){
        return _buildRow();
      },
      itemCount: 3,
    );
  }

  Widget _buildRow() {
    // return Text('pppppj');
    return Card(
      child:Container(child:  Text('jjjjj'),) 
    ,);
  }
}

