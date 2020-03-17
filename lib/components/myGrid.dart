import 'package:flutter/material.dart';

class myGridView extends StatefulWidget {
  @override
  _myGridViewState createState() => _myGridViewState();
}

class _myGridViewState extends State<myGridView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('dddd'),);
  }

  Widget _buildGrid() {
    return GridView.count(
      crossAxisCount: 2,
      children: _buildGridList(1),

    );
  }

  List<Widget> _buildGridList(int count) {
    return List<Widget>.generate(count, (int index) => Container(child: Image.asset('images/pic${index +1}.jpg'),));
  }
}