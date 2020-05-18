import 'package:design_et_animation/view/notify_pageView.dart';
import 'package:design_et_animation/widget/custom_drawer.dart';
import 'package:design_et_animation/widget/custom_endDrawer.dart';
import 'package:design_et_animation/widget/loginPage/splashtologin.dart';
import 'package:design_et_animation/widget/searchbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  ValueNotifier<double> _notifier = ValueNotifier(0); 

  PageController _pageController = PageController(initialPage: 0);
  @override
  void dispose(){
    _notifier ?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      physics: NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: <Widget>[
        SplashToLogin(pageController: _pageController,),
        Scaffold(
          backgroundColor: Colors.transparent,
          drawer: CustomDrawer(),
          drawerScrimColor: Colors.black.withOpacity(0.2),
          endDrawer: CustomEndDrawer(),
          body: Stack(
            children: <Widget>[
              AnimatedBuilder(
                animation: _notifier, 
                builder: (context, _){
                  return Opacity(
                    opacity: _notifier.value.abs(),
                    child: Container(color: Colors.white)
                  );
                }
              ),
              NotifyPageView(notifier: _notifier,),
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 25),
                    child: SearchBar()
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}