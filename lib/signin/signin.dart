import "package:flutter/material.dart";
import "signup.dart";
import "../Menupage/course.dart";
import "../Menupage/profile.dart";
import "../Menupage/setting.dart";

class Signin extends StatelessWidget {
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
                margin: EdgeInsets.only(top: 100),
                child: Image.asset("assets/images/Signin.png")
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Log in", style: TextStyle(fontFamily: "Rubik", fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500))
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text("Login with social networks", style: TextStyle(fontFamily: "Rubik", fontSize: 16, fontWeight: FontWeight.w400))
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      
                      child: Image.asset("assets/images/Facebook.png")
                    ),
                    Container(
                      child: Image.asset("assets/images/Google.png")
                    ),
                    Container(
                      child: Image.asset("assets/images/Instagram.png")
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    SizedBox(
                      width: 343,
                      height: 53,
                      child: TextField(
                        
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                            
                          ),
                          
                          hintText: "Email",
                          hintStyle: TextStyle(fontFamily: "Rubik", fontSize: 16, color: Colors.grey,),
                          prefixIcon: Icon(Icons.email),
                        )
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 343,
                      height: 53,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(fontFamily: "Rubik", fontSize: 16, color: Colors.grey),
                          prefixIcon: Icon(Icons.password)
                          
                        )
                      )
                    ))
                  ]
                )
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                child: GestureDetector(
                  child: Text("Forgot your Password?", style: TextStyle(fontFamily: "Rubik", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(120, 116, 109, 1)))
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Course()
                      )
                    );
                  },
                  child: Container(
                    width: 343, 
                    height: 56,
                    
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(227, 86, 42, 1),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text("Log in", style: TextStyle(fontFamily: "Rubik", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white))
                    )
                  )
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup()
                      )
                    );
                  },
                  child: Text("Sign up", style: TextStyle(fontFamily: "Rubik", fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500))
                )
              )
            ]
          )
        )
      )
    );
  }
}