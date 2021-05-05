import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class signinAnimation extends StatelessWidget
{
  final String title;
  final Animation<double> controller;
  final Animation<double> buttonsqueezeAnimation;
  final Animation<double> buttonZoomout;
  double btnHeight ;
  Color color;

  signinAnimation({@required this.controller,@required this.title,this.color : Colors.cyan,this.btnHeight = 60}):
        buttonsqueezeAnimation= Tween(begin: 200.0,end: 60.0).animate(new CurvedAnimation(parent: controller, curve: new Interval(0.0, 0.200))),
        buttonZoomout= Tween(begin: 70.0,end: 1000.0).animate(new CurvedAnimation(parent: controller, curve: new Interval(0.550, 0.999,curve: Curves.bounceOut)));


  Widget animalatiobbuilder(BuildContext context,Widget child)
  {
    return new Container(
      margin: EdgeInsets.only(bottom: 30),
      width: buttonsqueezeAnimation.value,
      height: btnHeight ,

      alignment: Alignment.center,
      decoration: BoxDecoration(color: color,borderRadius:BorderRadius.all(Radius.circular(30))),

      child: buttonsqueezeAnimation.value > 199 ?Container(
          constraints: BoxConstraints(maxWidth: 170),
          padding: EdgeInsets.symmetric(horizontal: 7),
          alignment: Alignment.center,
          child: new AutoSizeText(title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,letterSpacing: 0.5),textAlign: TextAlign.center,maxLines: 1,minFontSize: 10,maxFontSize: 20,)):buttonZoomout.value <300 ?new CircularProgressIndicator(
        valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
      ):(buttonZoomout.value > 80 ?Icon(Icons.done,color: Colors.white,size: 30,):Icon(Icons.close,color: Colors.white,size: 30,)),

    );



  }

  @override
  Widget build(BuildContext context) {
    return new AnimatedBuilder(animation: controller, builder: animalatiobbuilder);
  }

}