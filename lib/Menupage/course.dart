import "package:flutter/material.dart";
import "../Components/Courseblock.dart";

// For navigation bar
import "../Menupage/profile.dart";
import "../Menupage/main.dart";
import "../Menupage/setting.dart";

class Course extends StatefulWidget {
  @override 
  _Course createState() => _Course();

  
  
  
    
  }


class _Course extends State<Course> {
  int selectedIndex = 0;

  List pages = <Widget>[
    MainScreen(),
    Profile(),
    Settings()


  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override 

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: onItemTapped,
      ),
      body: pages.elementAt(selectedIndex)
    );
    
  }
}