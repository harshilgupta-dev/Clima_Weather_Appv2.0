import 'package:flutter/material.dart';
import 'screen/splash_screen.dart';
 void main(){
   runApp(Clima());
 }
 
 class Clima extends StatelessWidget {
   const Clima({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         body: SplashScreen(),
        ),
       );
   }
 }
 