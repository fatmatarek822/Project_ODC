// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:odcworkshop2/view_model/home/home_cubit.dart';
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => HomeCubit(),
//       child: BlocConsumer<HomeCubit, HomeState>(
//         listener: (context, state) {
//           // TODO: implement listener
//         },
//         builder: (context, state) {
//           HomeCubit myCubit = HomeCubit.get(context);
//           return MaterialApp(
//             home: Scaffold(
//               body: SafeArea(
//                 child: Column(
//                   children: [
//                     Center(
//                       child: AnimatedContainer(
//                         duration: Duration(milliseconds: 500),
//                         width: myCubit.width,
//                         color: Colors.green,
//                         height: myCubit.h,
//                       ),
//                     ),
//                     ElevatedButton(
//                         onPressed: () {
//                           //function body
//                           myCubit.change();
//                         },
//                         child: Text("Counter"))
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
