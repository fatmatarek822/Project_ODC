import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/pages/layout.dart';
import 'package:odcworkshop2/view_model/lectures/lectures_cubit.dart';
import 'package:odcworkshop2/view_model/lectures/lectures_state.dart';

class LecturesScreen extends StatelessWidget {
  const LecturesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LecturesCubit(),
      child: BlocConsumer<LecturesCubit, LecturesState>(
        listener: (context, state){},
        builder: (context, state)
        {
          LecturesCubit cubit = LecturesCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                'Lectures',
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
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.orange,
                    size: 27,
                  ),
                )
              ],
            ),
            body: Column(
              children: [
                BuildCardLectures(
                  name: 'Flutter',
                  day: 'Wednesday',
                  StartTime: '12:00pm',
                  EndTime: '2:00pm',
                  DaySection: 'Lecture Day',
                ),
                BuildCardLectures(
                  name: 'React',
                  day: 'Thursday',
                  StartTime: '12:00pm',
                  EndTime: '2:00pm',
                  DaySection: 'Lecture Day',
                ),
                BuildCardLectures(
                  name: 'Vue',
                  day: 'Thursday',
                  StartTime: '2:00pm',
                  EndTime: '4:00pm',
                  DaySection: 'Lecture Day',
                ),
              ],
            ),
          );
        },

      ),
    );
  }
}
