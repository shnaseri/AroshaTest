import 'package:flutter/material.dart' ;
class MyAppBar extends StatelessWidget with PreferredSizeWidget{
  BuildContext contextp;

  MyAppBar({this.contextp}) ;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(contextp).size.height;
    return AppBar(
      iconTheme: IconThemeData(color: Color(0xff66738F)),
      backgroundColor: Color(0xffFCFCFC),
      elevation: 4.0,

      shadowColor: Colors.transparent,
      title: new Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Container(
            height: 0.06 * height,
            width: 0.06 * height,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/twitter2.png")
                )
            ),
          ),
          new SizedBox(width: 10,),
          new Text("Twitter",style: TextStyle(color:Color(0xff66738F), fontWeight: FontWeight.w900
          ))
        ],
      ),
      actions: [
        new Icon(Icons.search_sharp,size: 30,),

        new SizedBox(width: 15,),
        Center(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
            new Container(
            height: 0.03 * height,
            width: 0.03 * height,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage("assets/images/alarm.png")
                )
            ),
          ),
              CircleAvatar(
                radius: 3,
                backgroundColor: Colors.orangeAccent,
              )
            ],
          ),
        ),
        new SizedBox(width: 15,),
        new Container(
          height: 0.06 * height,
          width: 0.06 * height,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                fit: BoxFit.fitWidth,
                  image: AssetImage("assets/images/clock.jpg")
              )
          ),
        ),
    new SizedBox(width: 10,),
      ],
      automaticallyImplyLeading: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(MediaQuery.of(contextp).size.height * 0.08);

}