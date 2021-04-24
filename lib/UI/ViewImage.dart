import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewFileScreen extends StatefulWidget
{
  final String file;
  ViewFileScreen({@required this.file});
  @override
  State<StatefulWidget> createState() => ViewFileScreenState();

}

class ViewFileScreenState extends State<ViewFileScreen>{
  bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return new Directionality(textDirection: TextDirection.rtl, child: new Scaffold(
        backgroundColor: Colors.black87,
        body:new Center(
            child: _showimage()

        )


    ),
    );
  }
  _showimage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(widget.file)
        )
      ),
    );
  }
  }

