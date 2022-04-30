import "package:flutter/material.dart";
import "../Components/SettingBlock.dart";

class Settings extends StatelessWidget {

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/back.png"),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Setting", style: TextStyle(fontFamily: "Rubik", fontSize: 24, color: Colors.black, fontWeight: FontWeight.w500))
      ),
      body: SingleChildScrollView(child: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        
        child: Container(
          margin: EdgeInsets.only(top: 40),
           child: Column(
             children: [
               Container(
                 child: Image.asset("assets/images/settingpage.png")
               ),
               Container(
                 margin: EdgeInsets.only(top: 40),
                 child: Column(
                   children: [
                     SettingBlock(343.0, 82.0, "Notification", "assets/images/notification.png"),
                     Container(
                       alignment: Alignment.centerLeft,
                       margin: EdgeInsets.only(top: 10, left: 20),

                       child: Text("Account Information", style: TextStyle(fontFamily: "Rubik", fontSize: 20, fontWeight: FontWeight.w500))
                     ),
                     SettingBlock(343.0, 82.0, "Name", "assets/images/person.png", "Juana Antonieta"),
                     SettingBlock(343.0, 82.0, "Email", "assets/images/emails.png", "juanita123@gmail.com"),
                     SettingBlock(343.0, 82.0, "Password", "assets/images/password.png", "changed 2 weeks ago")
                   ]
                 )
               )

             ]
           ) 
        )
      )
    ));
  }
}