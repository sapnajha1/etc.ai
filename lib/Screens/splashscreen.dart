import 'dart:async';

import 'package:english/Screens/mainscreens/desktop.dart';
import 'package:english/Screens/mainscreens/mobile.dart';
import 'package:english/Screens/mainscreens/tablet.dart';
import 'package:english/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

import '../const/color.dart';

class splashscreen extends StatefulWidget{
  // const splashscreen({super.key});

 splashscreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState()=>_splashscreenState();
}

class _splashscreenState extends State<splashscreen>{
  

  void initState(){
    super.initState();
    Timer(Duration(seconds:2),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (Context)=>Responsive_layout(
          desktopScaffold:DesktopPage(title:'desktoppage'),
          mobileScaffold: MobilePage(title: 'mobilepage'), 
          tabletScaffold: tabletPage(title: 'tabletpage'))
          ));});}
    
  
    @override
    Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:highlights,
      body: Center(
        child: Image.asset("images/new.png",height:100,width:100,),
      ),

    );
  }
}
