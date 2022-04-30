

import "package:flutter/material.dart";

class ButtonBlock extends StatelessWidget {
  final dynamic _width;
  final dynamic _height;
  final String sentence;

  ButtonBlock(this._width, this._height, this.sentence);
  @override 

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 20),
      child: GestureDetector(
        child: Container(
          width: _width,
          height: _height,
          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2.0, color: Colors.grey)
          ),
          child: Container(
            alignment: Alignment.center,
            child: Text(sentence, style: TextStyle(fontFamily: "Rubik", fontSize: 24, fontWeight: FontWeight.w500))
          )
        )
      )
    );
  }
}