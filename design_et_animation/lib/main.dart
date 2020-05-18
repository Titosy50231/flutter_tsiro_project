import 'package:design_et_animation/view/login_page.dart';
import 'package:design_et_animation/view/notify_pageView.dart';
import 'package:design_et_animation/widget/custom_drawer.dart';
import 'package:design_et_animation/widget/custom_endDrawer.dart';
import 'package:design_et_animation/widget/page1/video.dart';
import 'package:design_et_animation/widget/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  Widget build(BuildContext context) {
    return Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BackgroundVideo(),
          Container(color: Colors.black38,),

          // ICI
          LoginPage()
        ],
      );
  }
}