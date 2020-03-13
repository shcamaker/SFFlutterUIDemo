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
          FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: 'https://upload-images.jianshu.io/upload_images/1477238-2222a56b7e4c3c6e.jpeg?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240'),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildTextSection()
        ],
      ),
    );
  }

  Widget _buildTextSection() {
    return Container(
      child: Text('''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',softWrap: true,),
        padding: EdgeInsets.all(32.0),
        
    );
  }

  Widget _buildButtonSection() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildButtonColumn(Icons.call, 'Call'),
          _buildButtonColumn(Icons.near_me, 'route'),
          _buildButtonColumn(Icons.share, 'share')
        ],
        
      ),
    );
  }

  Column _buildButtonColumn(IconData icon, String data) {
    Color color = Theme.of(context).primaryColor;
    return Column(
      children: <Widget>[
        Icon(icon, color: color,),
        Container(
          child:  Text(data),
          padding: EdgeInsets.only(top: 8.0),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
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


          Container(
            child: Icon(Icons.star,color: Colors.red,),
            padding: EdgeInsets.only(right: 10.0),
          ),
          

          Text('43')
        ],),
      padding: EdgeInsets.all(32.0),
    );
  }

}

