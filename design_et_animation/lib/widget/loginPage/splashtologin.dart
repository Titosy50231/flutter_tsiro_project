import 'package:flutter/material.dart';

class SplashToLogin extends StatefulWidget {
  final PageController pageController;

  SplashToLogin({this.pageController});

  @override
  _SplashToLoginState createState() => _SplashToLoginState();
}

class _SplashToLoginState extends State<SplashToLogin> {
  


  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),
      (){
        setState(() {
          _myAnimatedWidget = _buildScreen();
        });
      }
    );
  } 

  Widget _myAnimatedWidget = Center(
        child:  Container(
          height: 650,
          child: Center(
            child: Text("BIENVENUE", 
              style: TextStyle(color: Colors.white, fontSize: 42, fontFamily: "PlayfairDisplay"),
            ),
          )
        ),
    );

  @override
  Widget build(BuildContext context) {
    
      
    return Scaffold(
      floatingActionButton: FlatButton(onPressed: (){
        widget.pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.ease);},
      child: Text("Skip", style: TextStyle(color: Colors.white70, fontSize: 18),)),
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: AnimatedSwitcher(
          // reverseDuration: Duration(seconds: 2),
          duration: const Duration(seconds: 2),
          child: _myAnimatedWidget,
        ),
      )
    );
  }


  Widget _buildScreen(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: MediaQuery.of(context).size.height* 0.5,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Ilay",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "PlayfairDisplay",
                          fontSize: 18
                        ),   
                      ),
                    ),
                    Text(
                      "Tsiro",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PlayfairDisplay",
                        fontSize: 100
                      ),   
                    ),
                    Text(
                      "Livre de recette à tout moment",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "PlayfairDisplay",
                        fontSize: 16
                      ),   
                    )
                  ],
                ),
              ),
            ),                

            Container(
              height: MediaQuery.of(context).size.height* 0.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                    Text(
                      "Facilitez-vous la vie ",
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: "PlayfairDisplay",
                        fontSize: 16
                      ),   
                    ),

                  SizedBox(height: 20,),


                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.amber.withOpacity(0.9)
                    ),
                    child: Center(
                      child: Text("S'authentifier",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(height: 18,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white.withOpacity(0.5)
                    ),
                    child: Center(
                      child: Text("S'enregistrer",
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                    ),
                  ),

                  SizedBox(height: 32,),

                  Text(
                      "&Titosy manankasina&",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "PlayfairDisplay",
                        fontSize: 12
                      ),   
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}