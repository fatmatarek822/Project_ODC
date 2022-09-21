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
      create: (context) => MidtermCubit()..getMidtermData(),
      child: BlocConsumer<MidtermCubit, MidtermState>(
        listener: (context, state) {},
        builder: (context, state) {
          MidtermCubit myCubit = MidtermCubit.get(context);

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
            body: myCubit.midtermmodel == null
                ? Center(
                    child: CircularProgressIndicator(
                    color: Colors.orange,
                  ))
                : ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: myCubit.midtermmodel!.data!.length,
                    itemBuilder: (context, index) {
                      return BuildCardLectures(
                        name: myCubit.midtermmodel!.data![index].examSubject
                            .toString(),
                        day: myCubit.midtermmodel!.data![index].examDate
                            .toString(),
                        StartTime: myCubit
                            .midtermmodel!.data![index].examStartTime
                            .toString(),
                        EndTime: myCubit.midtermmodel!.data![index].examEndTime
                            .toString(),
                        DaySection: myCubit
                            .midtermmodel!.data![index].examEndTime
                            .toString(),
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}
