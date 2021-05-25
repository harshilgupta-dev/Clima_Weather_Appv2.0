import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'loading_page.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), (){
      return Navigator.push(context, MaterialPageRoute(builder: (context){return LoadingPage();}));
    });
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.blue,
                  Colors.blue,
                  Colors.white,
                  Colors.blue,
                  Colors.blue,
                ],
                stops: [0.4, 0.1, 1.0, .1, .1],
            ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: [
            Positioned(
                bottom: 390.0,
                child: Image.asset(
                  'images/icon1.png',
                  width: 300,
                ),),
            Positioned(
              top: 350.0,
              child: Text(
                'Lets Check Weather',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Color(0xFFE5C02E),
                    letterSpacing: 1.9,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Pattaya',
                    shadows: [
                      Shadow(
                        offset: Offset(2,5),
                        blurRadius: 30.0,
                        color: Colors.blue[900]
                      )
                    ]
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Positioned(
              top: 410.0,
              child: SpinKitSquareCircle(
                color: Colors.white,
                size: 80.0,
                duration: Duration(seconds: 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
