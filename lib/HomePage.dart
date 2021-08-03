import 'package:flutter/material.dart';
import 'Content/Body.dart';
import 'Content/AppBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: appBar,
       body: Bodywidget(),
      ),
    );
  }
}