import 'package:flutter/material.dart';

import 'package:renalcare/SignIn/Walkthrough.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              // color: Color(0xFF005897),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 300,
                child: LogoIcon()
                ),
              Text(
                "Renal Care",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RaisedButton(
                  shape: StadiumBorder(),
                  color: Colors.red,
                  elevation: 7.0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WalkthroughScreen()));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LogoIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logoImage = AssetImage("assets/111.png");
    Image image = Image(
      image: logoImage,
    );
    return Container(
      child: image,
    );
  }
}
