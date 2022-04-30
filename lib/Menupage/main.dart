import "package:flutter/material.dart";
import "../Components/Courseblock.dart";

class MainScreen extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.15,
              margin: EdgeInsets.only(top: 40),
              alignment: Alignment.centerLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(right: 200, top: 10),
                          child: Text("Hello", style: TextStyle(fontFamily: "Rubik", fontSize: 16, fontWeight: FontWeight.w400))
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Text("Juana Antonieta", style: TextStyle(fontFamily: "Rubik", fontSize: 32,fontWeight: FontWeight.w700))
                        )
                      ]
                    )
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 40),
                    child: Image.asset("assets/images/48px.png")
                    
                  )
                ]
              )
            ),
            Container(
              child: SizedBox(
                width: 343,
                height: 56,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search courses",
                    hintStyle: TextStyle(fontFamily: "Rubik", fontSize: 14, fontWeight: FontWeight.w400),
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0
                      )
                    )
                  )
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width,
              height: 75,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text("Category :", style: TextStyle(fontFamily: 'Rubik', fontWeight: FontWeight.w400, fontSize: 14))
                  ),
                  Container(
                    width: 54,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(101, 170, 234, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Css", style: TextStyle(fontFamily: "Rubik", fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500))
                    )
                  ),
                  Container(
                    width: 54,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(101, 170, 234, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("UI", style: TextStyle(fontFamily: "Rubik", fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white,))
                    )
                  ),
                  Container(
                    width: 54,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(101, 170, 234, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Swift", style: TextStyle(fontFamily: "Rubik", fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500))
                    )
                  ),
                  Container(
                    width: 54,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(101, 170, 234, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Flutter", style: TextStyle(fontFamily: "Rubik", fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white))
                    )
                  ),
                  
                  

                ]
              )
            ),
            Container(
                    child: SingleChildScrollView(
                      
                      child: Column(
                        children: [
                          CourseBlock("assets/images/Courselist1.png", ["3 h 30 min", "UI", "Advanced mobile interface design"], 343.0, 297.0),
                          CourseBlock("assets/images/Courselist2.png", ["3 h 30 min ", "HTML", "Advanced web applications"], 343.0, 297.0)
                        ]
                        
                      ))
                    )

          ]
        )
    ));
  }
}