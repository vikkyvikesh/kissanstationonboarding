

import 'package:flutter/material.dart';

class Utils{
  static double setheight(
      double height1, BuildContext context
      ){
    var height = MediaQuery.of(context).size.height -
        (MediaQuery.of(context).size.height - height1);
    return height;
  }
  static double setwidth(
      double width1, BuildContext context
      ){
    var width = MediaQuery.of(context).size.width -
        (MediaQuery.of(context).size.width - width1);
    return width;
  }

}