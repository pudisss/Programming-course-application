import "package:flutter/material.dart";
import "signin.dart";
class Signup extends StatelessWidget {
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0
      ),
      
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Container(
          alignment: Alignment.center,
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(),
              child: Image.asset("assets/images/Signup.png")
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Sign up", style: TextStyle(fontFamily: "Rubik", fontSize: 24, fontWeight: FontWeight.w500,))
            ),
            Container(
              margin: EdgeInsets.only(top: 10,),
              child: Text("Create your Account", style: TextStyle(fontFamily: "Rubik", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(120, 116, 109, 1)))
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    
                    child: SizedBox(
                      width: 311,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0, color: Color.fromRGBO(120, 116, 109, 1))
                            
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Name",
                          hintStyle: TextStyle(fontFamily: "Rubik", fontSize: 14, color: Color.fromRGBO(120, 116, 109, 1))
                        )                          
                        
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 311,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0, color: Color.fromRGBO(120, 116, 109, 1))
                            
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Email",
                          hintStyle: TextStyle(fontFamily: "Rubik", fontSize: 14, color: Color.fromRGBO(120, 116, 109, 1))
                        )                          
                        
                      )
                    )
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: 311,
                      height: 56,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 2.0, color: Color.fromRGBO(120, 116, 109, 1))
                            
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Rubik", fontSize: 14, color: Color.fromRGBO(120, 116, 109, 1))
                        )                          
                        
                      )
                    )
                  )
                ]
              )
            ),

            Container(
              margin: EdgeInsets.only(top: 20),
              child: GestureDetector(
                child: Container(
                  width: 311,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(227, 86, 42, 1),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text("Sign up", style: TextStyle(fontFamily: 'Rubik', fontSize: 16, color: Colors.white))
                  )
                )
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Signin()
                    )
                  );
                },

                child: Text("Log in", style: TextStyle(fontFamily: "Rubik", fontSize: 16, color: Color.fromRGBO(120, 116, 109, 1))
              )
            )
            )]
        )
      ))
    );
  }
}