import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/pages/layout.dart';
import 'package:odcworkshop2/view_model/section/section_cubit.dart';
import 'package:odcworkshop2/view_model/section/section_state.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: true,
      create: (context) => SectionCubit()..getData(),
      child: BlocConsumer<SectionCubit, SectionState>(
        listener: (context, state){},
        builder: (context, state){

          SectionCubit myCubit = SectionCubit.get(context);

          return  Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              centerTitle: true,
              title: const Text(
                'Sections',
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
            body: myCubit.sectionmodel == null ? Center(child: CircularProgressIndicator(color: Colors.orange,)) : ListView.builder(
              itemCount: myCubit.sectionmodel!.data!.length,
                itemBuilder: (context, index)
                {
                  return BuildCardLectures(
                    name: myCubit.sectionmodel!.data![index].sectionSubject.toString(),
                    day: myCubit.sectionmodel!.data![index].sectionDate.toString(),
                    StartTime: myCubit.sectionmodel!.data![index].sectionStartTime.toString(),
                    EndTime: myCubit.sectionmodel!.data![index].sectionEndTime.toString(),
                    DaySection: myCubit.sectionmodel!.data![index].sectionEndTime.toString(),

                  );
                },
            ),
          );
        },
      ),
    );
  }
}