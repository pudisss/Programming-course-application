import "package:flutter/material.dart";

class TextFieldBlock extends StatelessWidget {

  final dynamic _width;
  final dynamic _height;
  final String _hintText;
  final dynamic _SizeText;
  

  

  TextFieldBlock(this._width, this._height, this._hintText, this._SizeText);
  @override 

  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey, width: 2.0)
          ),
          hintText: _hintText,
          hintStyle: TextStyle(fontFamily: "Rubik",fontSize: _SizeText, color: Colors.grey,),
          suffixIcon: Icon(Icons.search)
        ),
      )
    );
  }
}