
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:odcworkshop2/view/pages/events.dart';
import 'package:odcworkshop2/view/pages/layout.dart';
import 'package:odcworkshop2/view/pages/login.dart';
import 'package:odcworkshop2/view/pages/register.dart';
import 'package:odcworkshop2/view/pages/section.dart';
import 'package:odcworkshop2/view/pages/setting.dart';
import 'package:odcworkshop2/view/pages/splash.dart';
import 'package:odcworkshop2/view_model/database/network/dio_helper.dart';
import 'view/pages/home_screen.dart';

void main() async {
  await DioHelper.init();
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //List<Widget> views =[];

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange,
        ),
        home: Login(),
      ),
    );
  }
}


