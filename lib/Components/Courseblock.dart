import "package:flutter/material.dart";

class CourseBlock extends StatelessWidget {
  final String _picturepath;
  final List<String> sentence;
  final dynamic _width;
  final dynamic _height;

  CourseBlock(this._picturepath, this.sentence, this._width, this._height);
  @override 
  
  Widget build(BuildContext context) {
    return Container(
      width: _width,
      height: _height,
      margin: EdgeInsets.only(bottom: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            offset: Offset(0, 2)
          )
        ]
        
      ),
      
      child: Column(
        children: [
          Container(
            width: 343,
            height: 194,
            child: Image.asset(_picturepath)
          ),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(sentence[0], style: TextStyle(fontFamily: "Rubik", fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(91, 160, 146, 1)))
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(sentence[1], style: TextStyle(fontFamily: "Rubik", fontSize: 24, fontWeight: FontWeight.w500))
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Text(sentence[2], style: TextStyle(fontFamily: "Rubik", fontWeight: FontWeight.w300, fontSize: 14))
                ),

              ]
            )
          )

        ]
      )

    );
  }
}