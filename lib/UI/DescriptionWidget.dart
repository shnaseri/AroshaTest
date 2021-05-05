import 'package:flutter/material.dart';
class DescriptionTextWidget extends StatefulWidget {
  final String text;

  DescriptionTextWidget({@required this.text});

  @override
  _DescriptionTextWidgetState createState() => new _DescriptionTextWidgetState();
}

class _DescriptionTextWidgetState extends State<DescriptionTextWidget> {
  String firstHalf;
  String secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();

    if (widget.text.length > 20) {
      firstHalf = widget.text.substring(0, 20);
      secondHalf = widget.text.substring(20, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: secondHalf.isEmpty
          ? new Text(firstHalf)
          : new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          new Text(flag ? (firstHalf + "...") : (firstHalf + secondHalf),style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 16),textAlign: TextAlign.start,),
          new InkWell(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  flag ? "More" : "Less",
                  style: new TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w900),

                ),
              ],
            ),
            onTap: () {
              setState(() {
                flag = !flag;
              });
            },
          ),
        ],
      ),
    );
  }
}