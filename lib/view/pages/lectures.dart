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
      lazy: true,
      create: (context) => LecturesCubit()..getLectureData(),
      child: BlocConsumer<LecturesCubit, LecturesState>(
        listener: (context, state){},
        builder: (context, state)
        {
          LecturesCubit myCubit = LecturesCubit.get(context);
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
            body: myCubit.lecturemodel == null ? Center(child: CircularProgressIndicator(color: Colors.orange,)) : ListView.builder(
              itemCount: myCubit.lecturemodel!.data!.length,
              itemBuilder: (context, index)
              {
                return BuildCardLectures(
                  name: myCubit.lecturemodel!.data![index].lectureSubject.toString(),
                  day: myCubit.lecturemodel!.data![index].lectureDate.toString(),
                  StartTime: myCubit.lecturemodel!.data![index].lectureStartTime.toString(),
                  EndTime: myCubit.lecturemodel!.data![index].lectureEndTime.toString(),
                  DaySection: myCubit.lecturemodel!.data![index].lectureEndTime.toString(),

                );
              },
            ),
          );
        },

      ),
    );
  }
}
