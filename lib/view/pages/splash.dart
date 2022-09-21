import 'dart:async';

import 'package:flutter/material.dart';
import 'package:odcworkshop2/view/pages/login.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();

}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
        return Login();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Orange ',
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              Text(
                'Digital Center',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: LinearPercentIndicator(
              barRadius: Radius.circular(20),
              linearStrokeCap: LinearStrokeCap.round,
              animation: true,
              animationDuration: 1000,
              lineHeight: 10.0,
              percent: 1,
              progressColor: Colors.orange,

            ),
          ),
          SizedBox(height: 49,),








          // Container(
          //   margin: EdgeInsets.symmetric(vertical: 20),
          //   width: 300,
          //   height: 20,
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.all(Radius.circular(10)),
          //     child: LinearProgressIndicator(
          //       value: 0.7,
          //       valueColor: AlwaysStoppedAnimation<Color>(Color(0xff00ff00)),
          //       backgroundColor: Color(0xffD6D6D6),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
