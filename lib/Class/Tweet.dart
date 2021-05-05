import 'package:flutter/cupertino.dart';

class Tweet{
  final String avatar;
  final String name;
  final String username;
  final DateTime time;
  final String text;
  final int Comments;
  final int retweet;
  final int like;
  final String image;
  final String views;
  bool islike=false;
  Tweet( @required this.username,{this.avatar, this.name, this.text, this.time,
       this.Comments, this.like, this.retweet,this.image,this.views});

}

var Tweets = [
   Tweet(
     '@FannieObrien',
      name: 'Fannie Obrien',
     time: DateTime.utc(2021,4,24,16,30,0),
     text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
     Comments: 21,
     like: 721,
     retweet: 2,
     image: null,
     avatar: 'assets/images/1.jpg'

   ),
  Tweet(
      '@JulianOwens',
      name: 'Julian Owens',
      time: DateTime.utc(2021,4,24,10,30,0),
      text: 'Cleaning And Organizing Your Computer',
      Comments: 4782,
      like: 1203,
      retweet: 500,
      image: null,
      avatar: 'assets/images/10.jpg'

  ),
  Tweet(
      '@FannieObrien',
      name: 'Fannie Obrien',
      time: DateTime.utc(2021,4,24,16,30,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 21,
      like: 721,
      retweet: 2,
      image: 'assets/images/13.jpg',
      views: '37.7K',
      avatar: 'assets/images/2.jpg'

  ),
  Tweet(
      '@JoeGlover',
      name: 'Joe Glover',
      time: DateTime.utc(2021,4,24,9,30,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 1321,
      like: 421,
      retweet: 3413,
      image: null,
      avatar: 'assets/images/3.jpg'

  ),
  Tweet(
      '@AdelineCute',
      name: 'Adeline Marsh',
      time: DateTime.utc(2021,4,23,20,30,0),
      text: 'The Basics Of Western Astrology Explained',
      Comments: 192,
      like: 1423,
      retweet: 92,
      image: null,
      avatar: 'assets/images/4.jpg'

  ),
  Tweet(
      '@Amirikani',
      name: 'Eikani Amir',
      time: DateTime.utc(2021,4,22,16,0,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 50,
      like: 60,
      retweet: 1,
      image: 'assets/images/12.jpg',
      avatar: 'assets/images/5.jpg',
    views: '20.3K',


  ),
  Tweet(
      '@HoseinNas',
      name: 'Naserizade',
      time: DateTime.utc(2021,4,24,12,30,0),
      text: 'Test Text',
      Comments: 300,
      like: 2000,
      retweet: 100,
      image: 'assets/images/11.jpg',
      avatar: 'assets/images/6.jpg',
    views: '14.8K',


  ),
  Tweet(
      '@SajjadSa',
      name: 'Saharkhan',
      time: DateTime.utc(2021,4,21,13,30,0),
      text: 'Asp .Net Core',
      Comments: 10,
      like: 200,
      retweet: 3,
      image: null,
      avatar: 'assets/images/7.jpg',


  ),
  Tweet(
      '@Alibagher',
      name: 'Bagherzade Obrien',
      time: DateTime.utc(2021,4,20,16,30,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 34,
      like: 321,
      retweet: 8,
      image: 'assets/images/14.jpg',
      avatar: 'assets/images/8.jpg',
    views: '39K',


  ),
  Tweet(
      '@Mostafavimehdi',
      name: 'Mostafavim',
      time: DateTime.utc(2021,4,22,17,52,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 45,
      like: 14,
      retweet: 17,
      image: null ,
      avatar: 'assets/images/9.jpg'

  ),



];


var Tweets_Page2 = [
  Tweet(
      '@Faen_Page2',
      name: 'Fannie Obrien',
      time: DateTime.utc(2021,4,24,16,30,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 21,
      like: 721,
      retweet: 2,
      image: null,
      avatar: 'assets/images/1.jpg'

  ),
  Tweet(
      '@Julns_Page2',
      name: 'Julian Owens',
      time: DateTime.utc(2021,4,24,10,30,0),
      text: 'Cleaning And Organizing Your Computer',
      Comments: 4782,
      like: 1203,
      retweet: 500,
      image: null,
      avatar: 'assets/images/10.jpg'

  ),
  Tweet(
      '@Fannien_Page2',
      name: 'Fannrien',
      time: DateTime.utc(2021,4,24,16,30,0),
      text: 'Replace The Negatives In Your Life With Positives And Move Your Life Ahead',
      Comments: 21,
      like: 721,
      retweet: 2,
      image: 'assets/images/13.jpg',
      views: '37.7K',
      avatar: 'assets/images/2.jpg'

  ),


];