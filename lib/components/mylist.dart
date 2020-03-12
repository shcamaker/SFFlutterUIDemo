import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

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
    Image defaultImage = Image.asset('images/a_dot_burr.jpg', height: 120,fit: BoxFit.fill,);
    Image netImage = Image.network('https://upload-images.jianshu.io/upload_images/1477238-2222a56b7e4c3c6e.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240',);
    return Card(
      child: Column(
        children: <Widget>[
          defaultImage,
          netImage,
          _buildTitleSection(),
          _buildButtonSection()
        ],
      ),
    );
  }

  Widget _buildButtonSection() {
    return Container(
      child: Row(
        children: <Widget>[
          _buildButtonColumn(Icons.call, 'Call'),
          _buildButtonColumn(Icons.near_me, 'route'),
          _buildButtonColumn(Icons.share, 'share')
        ],
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String data) {
    return Column(
      children: <Widget>[
        Icon(icon),
        Container(
          child:  Text(data),
        ),
      ],
    );
  }
  Widget _buildTitleSection() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('eschinen Lake Campground'),
                ),
                Text('one piece', style: TextStyle(color: Colors.blue),)
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),

          Icon(
            Icons.star,color: Colors.red,
          ),

          Text('43')
        ],),
      padding: EdgeInsets.all(32.0),
    );
  }

}

