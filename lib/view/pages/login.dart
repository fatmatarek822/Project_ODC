import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/pages/layout.dart';
import 'package:odcworkshop2/view_model/database/network/dio_helper.dart';
import 'package:odcworkshop2/view_model/login/login_cubit.dart';

import '../../view_model/database/network/end_points.dart';
import '../component/login/text_form_custom.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if(state is LoginSuccess)
            {
              print('success');
              navigateTo(context, LayoutScreen());
            }
        },
        builder: (context, state) {
          LoginCubit myCubit = LoginCubit().get(context);

          return Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("Login"),
                      Text(myCubit.message),

                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: textCustom(
                            controller: myCubit.emailController, hint: 'email'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: textCustom(
                            controller: myCubit.passwordController, hint: 'password'),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30)),
                      ElevatedButton(onPressed: () {
                        //todo post data
                        myCubit.login();
                      }, child: Text("Login"))
                    ],
                  ),
                ),
              ),
            );

        },
      ),
    );
  }
}

