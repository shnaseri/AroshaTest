

import 'package:aroshatest/Class/Tweet.dart';
import 'package:aroshatest/UI/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:aroshatest/UI/TileTweet.dart';
class AppMainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new AppMainPageState();

}

class AppMainPageState extends State<AppMainPage>{
  var tweets = Tweets;
  void Toastshower(msg){
    Toast.show(msg,context,duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(contextp: context,),
      // drawer: builderDrawerLayout(context,setState),
      floatingActionButton: FloatingActionButton(child: new Icon(Icons.add)
        ,onPressed: (){
        Toastshower('Add clicked');
        },
        backgroundColor: Color(0xff55acee),
      ),
      body:Center(
        child: new Container(
          margin: EdgeInsets.only(top: 5),
          color: Color(0xffEAEAEA),
          width: MediaQuery.of(context).size.width,
          child: ListView.separated(itemBuilder: (context,i){
              return tiletweet(context,i,tweets,setState);
            }
          , separatorBuilder: (context,index){
            return Divider(height: 10,color: Color(0xffEAEAEA).withOpacity(0.5),thickness: 7,);

          }, itemCount: tweets.length),
        ),
      ),
    );
  }


}