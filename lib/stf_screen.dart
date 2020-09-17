import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class STFScreen extends StatefulWidget {
  static const String routeName ='/stf';
  @override
  _STFScreenState createState() => _STFScreenState();
}

class _STFScreenState extends State<STFScreen> {

  double screenHeight,screenWidth;

  // @override
  // void initState() {
  //   Timer(Duration(seconds: 5), (){Navigator.pop(context);});
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top - AppBar().preferredSize.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(child: Container(
            color: Colors.black,
          ),),
          Expanded(
            flex: 3,
            child: Container(
            color: Colors.red,
          ),),
        ],
      ),
    );
  }
}
