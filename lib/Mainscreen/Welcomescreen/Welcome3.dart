import "package:flutter/material.dart";
import "Welcome4.dart";
class Welcome3 extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 200),
              child: Image.asset("assets/images/Welcome3.png")
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    child: Text("""
Find a course
    for you.""", style: TextStyle(fontFamily: "Rubik", fontSize: 24, fontWeight: FontWeight.w500))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 20),
                    child: Text("""
Quarantine is the perfect time to spend your day learning 
something new, from anywhere!""", style: TextStyle(fontFamily: "Rubik", fontSize: 14, fontWeight: FontWeight.w400))
                  )
                ]
              )
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.only(bottom: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Welcome4()
                    )
                  );
                },
                child: Container(
                  width: 311, 
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(227, 86, 42, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Next", style: TextStyle(fontFamily: 
                    "Rubik", fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white))
                  )
                )
              )
            )
          ]
        )
      )
    );
  }
}