import 'package:flutter/material.dart';
import 'package:portfolio/MAboutTab.dart';
import 'package:portfolio/MProfilesTab.dart';
import 'package:portfolio/MProjectsTab.dart';
import 'package:portfolio/MCerficatesTab.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int _currentindex = 0;
  final List<Widget> _children = [
    MAboutTab(),
    MProfilesTab(),
    MProjectsTab(),
    MCertificatesTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PORTFOLIO",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              fontSize: 25,
              color:Colors.orange),
        ),
        centerTitle: true,
      ),
      body: _children[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        onTap: onTabTapped,
        currentIndex: _currentindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.cyanAccent),
            label: 'About',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.chrome_reader_mode, color: Colors.cyanAccent),
              label: 'Profiles & Tools'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_chart, color: Colors.cyanAccent),
              label: 'Projects'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate, color: Colors.cyanAccent),
              label: 'Certificates'),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }
}
