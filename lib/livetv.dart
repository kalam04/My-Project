import 'package:flutter/material.dart';
import 'mainDrawer.dart';

class LiveTv extends StatefulWidget {
  @override
  _LiveTvState createState() => _LiveTvState();
}

class _LiveTvState extends State<LiveTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text('Live Tv'),),
      //drawer: mainDrawer(),
      body: Container(
        height: 500,
        width: 500,

        child: Image.asset(
          'assets/images/cn4.png',
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
