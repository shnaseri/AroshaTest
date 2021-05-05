import 'package:aroshatest/UI/ViewImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:aroshatest/UI/formatter.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:aroshatest/Class/Tweet.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:toast/toast.dart';

import 'DescriptionWidget.dart';

Widget tiletweet(BuildContext context, int index,List<Tweet> tweets,setState) {
  void Toastshower(msg){
    Toast.show(msg,context,duration: Toast.LENGTH_LONG,gravity: Toast.BOTTOM);
  }
  return Container(

    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(35) , bottomRight: Radius.circular(35),topRight: Radius.circular(2),bottomLeft: Radius.circular(2))
    ),


    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: new ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: MediaQuery
            .of(context)
            .size
            .width * 0.03),
        trailing: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.08,
          child: Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(onTap: (){

              Toastshower('More Clicked');
            },
              child: Icon(Icons.more_vert, size: 25,),
            ),
          ),
        ),
        leading: new Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.15,
          // margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,vertical: MediaQuery.of(context).size.height*0.01),
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
                image: new AssetImage(tweets[index].avatar),
                fit: BoxFit.contain),

          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(tweets[index].name,
                  style: TextStyle(fontWeight: FontWeight.w900),),
                new SizedBox(width: 8,),
                Text(tweets[index].username, style: TextStyle(
                    fontWeight: FontWeight.w800,
                    color: Colors.grey),),

              ],

            ),
            new SizedBox(height: 5,),
            DescriptionTextWidget(text : tweets[index].text),
            // AutoSizeText(tweets[index].text,
            //   style: TextStyle(color: Colors.black, fontSize: Theme
            //       .of(context)
            //       .textTheme
            //       .overline
            //       .fontSize * 1.5, fontWeight: FontWeight.w400,fontFamily: 'MalikTrial'),
            //   maxLines: 2,
            //   maxFontSize: Theme
            //       .of(context)
            //       .textTheme
            //       .overline
            //       .fontSize * 1.5,
            //   minFontSize: Theme
            //       .of(context)
            //       .textTheme
            //       .overline
            //       .fontSize * 1.5,),
            new SizedBox(height: 5,),
            Text(timeago.format(tweets[index].time),
              style: TextStyle(color: Colors.grey, fontSize: Theme
                  .of(context)
                  .textTheme
                  .overline
                  .fontSize * 1.2),),
            new SizedBox(height: 20,),
            if (tweets[index].image !=null)
              new Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewFileScreen(file: tweets[index].image)));
                    },
                    child: Container(

                      width: MediaQuery.of(context).size.width*0.8,
                      height: MediaQuery.of(context).size.height*0.3
                      ,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20)
                        ,image: DecorationImage(

                        image: AssetImage(tweets[index].image),
                        fit: BoxFit.cover
                    )
                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(alignment: Alignment.centerLeft,child: new Text(tweets[index].views+'  views',style: TextStyle(fontSize: Theme.of(context).textTheme.overline.fontSize*1.4,color: Colors.grey,fontWeight: FontWeight.bold),)),
                  ),
                  new SizedBox(height: 20,),

                ],
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Toastshower('Comment Clicked');
                      }
                      ,child: new Icon(
                      Icons.chat_bubble_outlined, color: Colors.grey,
                      size: 20,),
                    ),
                    new SizedBox(width: 10,),
                    Text(formatter.format(tweets[index].Comments),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                  ],
                ),

                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Toastshower('Retweet Clicked');
                      },
                      child: new Icon(
                        Icons.repeat_sharp, color: Colors.grey,
                        size: 20,),
                    ),
                    new SizedBox(width: 10,),
                    Text(formatter.format(tweets[index].retweet),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                  ],
                ),
                Row(
                  children: [
                    LikeButton(size: MediaQuery.of(context).size.height*0.03,isLiked: tweets[index].islike,onTap: (islike) async{
                      if (!islike)
                        Toastshower('Like Clicked');
                      setState(() {
                        tweets[index].islike = !islike;

                      });
                      return !islike;

                    } ,),
                    new SizedBox(width: 10,),
                    Text(formatter.format(tweets[index].like),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Toastshower('Share Clicked!');
                      }
                      ,child: new Icon(
                      Icons.share, color: Colors.grey,
                      size: 20,),
                    ),
                    // new SizedBox(width: 10,),
                    // Text(formatter.format(tweets[index].Comments),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
                  ],
                )
              ],
            )
          ],
        ),

      ),
    ),
  );
}