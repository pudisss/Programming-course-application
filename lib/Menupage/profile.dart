import "package:flutter/material.dart";
import "../Components/TextField.dart";
import "../Components/ButtonBlock.dart";
import "../signin/signin.dart";

class Profile extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/back.png"),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Profile", style: TextStyle(fontFamily: "Rubik", fontSize: 24, fontWeight: FontWeight.w500, color: Colors.black))
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
              margin: EdgeInsets.only(top: 50),
              child: Image.asset("assets/images/Avatar.png")

            ),
            Container(
              child: Column(
                children: [
                  ButtonBlock(343.0, 80.0, "Your Courses"),
                  ButtonBlock(343.0, 80.0, "Saved"),
                  ButtonBlock(343.0, 80.0, "Payment"),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signin()
                          )
                        );
                      },
                      child: Text("Log out", style: TextStyle(fontFamily: "Rubik", fontSize: 16, color: Colors.grey))
                    )
                  )

                ]
              )
            )
          ]
        )
        
      ))
    );
  }
}