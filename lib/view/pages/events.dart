
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/pages/layout.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Events',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              navigateTo(context, LayoutScreen());
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.orange,
            )),
      ),
      body: MonthView(),
    );
  }
}
