
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
import 'package:odcworkshop2/view_model/database/network/local/cache_helper.dart';
import 'view/pages/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   DioHelper.init();
  await CacheHelper.init();

  Widget widget;

  String? accessToken = CacheHelper.getData(key: 'accessToken');

  if(accessToken !=null)
  {
    widget = LayoutScreen();
  }else
    {
      widget = Login();
    }

  runApp(MyApp(startWidget: widget,));

 // dynamic accessToken = CacheHelper.getData(key: 'token');
}

class MyApp extends StatelessWidget {

  final Widget? startWidget;

   MyApp({super.key, this.startWidget});

  //List<Widget> views =[];

  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.orange,
        ),
        home: startWidget!,
      ),
    );
  }
}


