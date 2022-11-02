import 'dart:async';

import 'package:flutter/material.dart';
import 'package:threeemsui/screens/onboardingpage.dart';

import '../themes.dart';


var scrHeight;
var scrWidth;


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => OnBoarding()));
    });
  }
  @override
  Widget build(BuildContext context) {
    scrHeight = MediaQuery.of(context).size.height;
    scrWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Padding(
              padding:  EdgeInsets.only(bottom: scrHeight*0.062),
              child: Image.asset("assets/logo.png",height:scrHeight*0.22,),
            ),


          ],
        ),
      ),

    );
  }
}
