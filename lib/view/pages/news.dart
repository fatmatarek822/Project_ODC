import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view_model/news/news_cubit.dart';
import 'package:odcworkshop2/view_model/news/news_state.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state){},
        builder: (context,state)
        {
          NewsCubit cubit = NewsCubit.get(context);

          return Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Text(
                    'News',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black),
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[350]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadiusDirectional.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              VerticalDivider(
                                width: 1,
                                indent: 5,
                                endIndent: 5,
                                color: Colors.white,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.copy, color: Colors.white, size: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'ODC',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'ODC Supports All Universties',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
