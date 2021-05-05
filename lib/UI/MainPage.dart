

import 'package:aroshatest/Animations/AnimaionButton.dart';
import 'package:aroshatest/Class/Tweet.dart';
import 'package:aroshatest/UI/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toast/toast.dart';
import 'package:aroshatest/UI/TileTweet.dart';
class AppMainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new AppMainPageState();

}

class AppMainPageState extends State<AppMainPage> with SingleTickerProviderStateMixin{
  var tweets = Tweets;
  ScrollController _listScrrollController = new ScrollController();

  void Toastshower(msg){
    Toast.show(msg,context,duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
  }
  var _formkey = GlobalKey<FormState>();
   String name;
   String username;
   DateTime time=DateTime.now();
   String text;
   int Comments = 0;
   int retweet = 0;
   int like = 0;
  AnimationController loginbuttoncontroller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loginbuttoncontroller=new AnimationController(vsync: this,duration: new Duration(milliseconds: 3000));

    _listScrrollController.addListener(() {
      final maxScroll = _listScrrollController.position.maxScrollExtent;
      final currentScroll = _listScrrollController.position.pixels;
      if (maxScroll - currentScroll <= 200){
        // tweets.addAll(Tweets_Page2);
      }
      setState(() {

      });
    });
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
        showAddTweetDialog(context,setState);
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

          }, itemCount: tweets.length,controller: _listScrrollController,),
        ),
      ),
    );
  }

  void showAddTweetDialog(BuildContext context, StateSetter setState) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    double height = MediaQuery.of(context).size.height;
    Future<bool> future = showModalBottomSheet(
      context: context,

      isScrollControlled: true,

      enableDrag: true,
      isDismissible: true,
      backgroundColor: Colors.transparent,

    builder: (context){
      double bottom = MediaQuery.of(context).viewInsets.bottom;

      return StatefulBuilder(builder: (context,setStateorginal){
          double myHeight = (bottom==0) ? (0.76*height):(0.95*height)-bottom ;

          return Builder(builder: (context){
            return Directionality(
              textDirection: TextDirection.ltr,
              child: Center(
                child: Form(
                  key: _formkey,
                  child: SingleChildScrollView(
                    child: ListView(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: [
                        Center(
                          child: Container(
                            width: width*0.8,
                            height: height*0.7,
                            padding: EdgeInsets.all(15),
                            margin: EdgeInsets.only(bottom: (bottom==0) ? 0.12*height:bottom + 0.02*height,top: 0.12*height),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: new ListView(
                              children: [
                                Center(
                                  child: Container(
                                    child: Text(
                                      'Add Tweet'
                                          ,
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w800,
                                        fontSize: Theme.of(context).textTheme.overline.fontSize*2
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(

                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5)
                                  ,decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blueAccent,width: 2)
                                    ,borderRadius: BorderRadius.circular(50),
                                    // boxShadow: [BoxShadow(color: Colors.black,blurRadius: 10)]
                                  ),
                                  width: 70,
                                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 6)
                                  ,child: new TextFormField(
                                    keyboardType: TextInputType.number,
                                    onSaved: (String value){
                                    username=value;
                                  }
                                    ,decoration: InputDecoration(
                                  border: InputBorder.none,
                                    focusColor: Colors.cyanAccent,
                                    labelText: 'UserName',
                                    labelStyle: TextStyle(fontSize: Theme.of(context).textTheme.overline.fontSize*1.3,fontWeight: FontWeight.bold),
                                  ),
                                    style: TextStyle(color: Colors.black,fontSize: Theme.of(context).textTheme.bodyText1.fontSize*1.4),
                                    textAlign: TextAlign.start,

                                  
                                  ),
                                ),
                                Container(

                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5)
                                  ,decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent,width: 2)
                                  ,borderRadius: BorderRadius.circular(50),
                                  // boxShadow: [BoxShadow(color: Colors.black,blurRadius: 10)]
                                ),
                                  width: 70,
                                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 6)
                                  ,child: new TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (String value){
                                    name=value;
                                  }
                                  ,decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusColor: Colors.cyanAccent,
                                  labelText: 'Name',
                                  labelStyle: TextStyle(fontSize: Theme.of(context).textTheme.overline.fontSize*1.3,fontWeight: FontWeight.bold),
                                ),
                                  style: TextStyle(color: Colors.black,fontSize: Theme.of(context).textTheme.bodyText1.fontSize*1.4),
                                  textAlign: TextAlign.start,


                                ),
                                ),
                                Container(

                                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5)
                                  ,decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blueAccent,width: 2)
                                  ,borderRadius: BorderRadius.circular(20),
                                  // boxShadow: [BoxShadow(color: Colors.black,blurRadius: 10)]
                                ),
                                  width: 70,
                                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10)
                                  ,child: new TextFormField(
                                  keyboardType: TextInputType.number,
                                  onSaved: (String value){
                                    text=value;
                                  }
                                  ,decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusColor: Colors.cyanAccent,
                                  labelText: 'Text',
                                  labelStyle: TextStyle(fontSize: Theme.of(context).textTheme.overline.fontSize*1.3,fontWeight: FontWeight.bold),
                                ),
                                  style: TextStyle(color: Colors.black,fontSize: Theme.of(context).textTheme.bodyText1.fontSize*1.4),
                                  textAlign: TextAlign.start,
                                maxLines: 5,

                                ),
                                ),
                                GestureDetector(
                                  onTap: () async{
                                    _formkey.currentState.save();
                                    await loginbuttoncontroller.animateTo(0.200);
                                    await Future.delayed(Duration(seconds: 2));
                                    tweets.add(Tweet(username,name: name,text: text,like: like,retweet: retweet,Comments: Comments,time: time, avatar: "assets/images/clock.jpg"));
                                    await loginbuttoncontroller.forward();
                                    setStateorginal((){});
                                    Navigator.pop(context);
                                    await loginbuttoncontroller.reverse();


                                  },
                                  child: Center(child: new signinAnimation(controller: loginbuttoncontroller.view,title: 'Sumbit',)),
                                )

                              ],
                            ),
                          ),
                        )



                      ],
                    ),
                  ),
                ),
              ),
            );
          });
        });
      }
    );
  }


}