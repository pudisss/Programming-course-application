import "package:flutter/material.dart";

class SettingBlock extends StatelessWidget {
  final dynamic _width;
  final dynamic _height;
  final String title;
  final String sentence;
  final String _pathfile;


  SettingBlock(this._width, this._height, this.sentence, this._pathfile, [this.title = ""]);
  @override 

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: GestureDetector(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey, width: 2.0),
          ),
          child: Container(

            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image.asset(_pathfile)
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 20),
                  child:Column(
                    children: [
                      Text(sentence, style: TextStyle(fontFamily: "Rubik", fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
                      Text(title, style: TextStyle(fontFamily: "Rubik", fontSize: 14, fontWeight: FontWeight.w400))
                    ]
                  )
                ),
                Container(
                  child: Image.asset("assets/images/Toggle Buttons.png")
                )


              ]
            )

          )
        )
      )
    );
  }
}