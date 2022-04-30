import "package:flutter/material.dart";
import "Welcome2.dart";

class Welcome1 extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
           
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 200),
                child: Image.asset("assets/images/welcome.png")

              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text("Code Factory", style: TextStyle(fontFamily: "Rubik", fontSize: 40, fontWeight: FontWeight.bold))
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(bottom: 50),
                
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Welcome2()
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
                      child: Text("Next", style: TextStyle(fontFamily: "Rubik", color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500))
                    )

                  )
                )
              )
            ]
          )

        )
      ),
    );
  }
}