import 'package:flutter/material.dart';
import 'package:instragram/utils/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final webscreenLayout;
  final mobilescreenLayout;
  const ResponsiveLayout({ Key? key,required this.webscreenLayout, required this.mobilescreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth>webscreenSize){
          // display web screnn layout
          return webscreenLayout;
        }
        return mobilescreenLayout;
      },
    );
  }
}