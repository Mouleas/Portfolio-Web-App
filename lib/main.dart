import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:portfolio/Mobilehome.dart';
import 'package:portfolio/Desktophome.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portfolio",
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileBody: Mobile(),
        desktopBody: Desktop(),
      ),
    );
  }
}
