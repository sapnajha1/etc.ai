
import 'package:flutter/material.dart';

class Responsive_layout extends StatelessWidget{
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  Responsive_layout({required this.desktopScaffold, 
    required this.mobileScaffold,
    required this.tabletScaffold,

});

  @override
  Widget build (BuildContext context){
    return LayoutBuilder(builder: (context, constraints){
      if (constraints.maxWidth<500){
        return mobileScaffold;
      }
      else if(constraints.maxWidth<1100){
        return tabletScaffold;
      }
      else{
        return desktopScaffold;
      }
    });
  }

}