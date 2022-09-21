import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/pages/layout.dart';
import 'package:odcworkshop2/view_model/midterm/midterm_cubit.dart';
import 'package:odcworkshop2/view_model/midterm/midterm_state.dart';

class MidtermsScreen extends StatelessWidget {
  const MidtermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MidtermCubit(),
      child: BlocConsumer<MidtermCubit, MidtermState>(
        listener: (context, state){},
        builder: (context, state)
        {
          MidtermCubit cubit = MidtermCubit.get(context);

          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                'Midterm',
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
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  BuildCardLectures(
                    name: 'Flutter',
                    day: '2022-08-18',
                    StartTime: '12:00pm',
                    EndTime: '2:00pm',
                    DaySection: 'Exam Date',
                  ),
                  BuildCardLectures(
                    name: 'React',
                    day: '2022-08-20',
                    StartTime: '12:00pm',
                    EndTime: '2:00pm',
                    DaySection: 'Exam Date',
                  ),
                  BuildCardLectures(
                    name: 'Vue',
                    day: '2022-08-20',
                    StartTime: '2:00pm',
                    EndTime: '4:00pm',
                    DaySection: 'Exam Date',
                  ),
                  BuildCardLectures(
                    name: 'Flutter',
                    day: '2022-06-05',
                    StartTime: '12:00pm',
                    EndTime: '2:00pm',
                    DaySection: 'Exam Date',
                  ),
                  BuildCardLectures(
                    name: 'React',
                    day: '2022-06-07',
                    StartTime: '12:00pm',
                    EndTime: '2:00pm',
                    DaySection: 'Exam Date',
                  ),
                  BuildCardLectures(
                    name: 'Vue',
                    day: '2022-06-07',
                    StartTime: '2:00pm',
                    EndTime: '4:00pm',
                    DaySection: 'Exam Date',
                  ),
                ],
              ),
            ),
          );
        },

      ),
    );
  }
}
