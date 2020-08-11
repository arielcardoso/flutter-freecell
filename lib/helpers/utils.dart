import 'package:flutter/material.dart';

class Utils{

  static getCardSize(context) {
    double width = 0;
    double height = 0;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    screenHeight = screenHeight - 90;

    width = screenWidth - 16; //left and right paddings
    width = width / 10; //total columns
    width = width - 2; //securty margin

    height = screenHeight - 16; //left and right paddings
    height = height / 4; //total rows
    height = height -2; //securty margin

    //calculate the proportion
    if ((width * 1.5) < height) {
      height = width * 1.5;
    } else{
      width = height/1.5;
    }

    return [width, height];
  }

}