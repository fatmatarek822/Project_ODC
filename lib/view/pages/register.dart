import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view/component/core/core_components.dart';
import 'package:odcworkshop2/view/component/pages_components/authentication.dart';
import 'package:odcworkshop2/view_model/register/register_cubit.dart';
import 'package:odcworkshop2/view_model/register/register_state.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state){},
        builder: (context, state)
        {
          RegisterCubit cubit = RegisterCubit.get(context);

          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.only(top: 80,right: 20,left: 20,bottom: 20),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    OrangeText(),
                    const SizedBox(
                      height: 80,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(type: TextInputType.text, label: 'Name'),
                        const SizedBox(
                          height: 20,
                        ),
                        defaultFormField(type: TextInputType.emailAddress, label: 'E-mail'),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultFormField(
                          isPassword: true,
                          type: TextInputType.visiblePassword,
                          label: 'Password',
                          suffix: Icons.remove_red_eye_outlined,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        defaultFormField(type: TextInputType.number, label: 'Phone Number'),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Text('Gender',),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: DecoratedBox(
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.orange),
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                      ),
                                      child: Center(
                                        child: DropdownButton(
                                          underline: DropdownButtonHideUnderline(child: Container()),
                                          value: cubit.dropdownvalue,
                                          // Down Arrow Icon
                                          icon: const Icon(Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: cubit.Gender.map((String Gender) {
                                            return DropdownMenuItem(
                                              value: Gender,
                                              child: Text(Gender),
                                            );
                                          }).toList(),
                                          // After selecting the desired option,it will
                                          // change button value to selected value
                                          onChanged: (String? newValue) {
                                            cubit.ChangeDropDown1(newValue);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],

                              ),
                            ),
                            Container(
                              width: 100,
                              child: Column(
                                children: [
                                  Text('University'),
                                  SizedBox(height: 5,),
                                  Container(
                                    child: DecoratedBox(
                                      decoration: ShapeDecoration(
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.orange),
                                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                        ),
                                      ),
                                      child: Center(
                                        child: DropdownButton(
                                          underline: DropdownButtonHideUnderline(child: Container()),
                                          value: cubit.dropdownvalue1,
                                          icon: const Icon(Icons.keyboard_arrow_down),

                                          // Array list of items
                                          items: cubit.University.map((String University) {
                                            return DropdownMenuItem(
                                              value: University,
                                              child: Text(University),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            cubit.ChangeDropDown2(newValue);
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: Column(
                            children: [
                              const Text(
                                'Grade',
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 70,
                                child: DecoratedBox(
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Colors.orange),
                                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                    ),
                                  ),
                                  child: Center(
                                    child: DropdownButton(
                                      underline: DropdownButtonHideUnderline(child: Container()),
                                      // Initial Value
                                      value: cubit.dropdownvalue2,

                                      // Down Arrow Icon
                                      icon: const Icon(Icons.keyboard_arrow_down),

                                      // Array list of items
                                      items: cubit.Grade.map((String Grade) {
                                        return DropdownMenuItem(
                                          value: Grade,
                                          child: Text(Grade),
                                        );
                                      }).toList(),
                                      // After selecting the desired option,it will
                                      // change button value to selected value
                                      onChanged: (String? newValue) {
                                        cubit.ChangeDropDown3(newValue);
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DefaultElvatedButton(text: 'Sign Up',ontap: (){}),
                              const SizedBox(
                                height: 20,
                              ),
                              HorizonatalDividerWithTexr(),
                              SizedBox(height: 20,),
                              DefaultOutlineButton(text: 'Login'),
                            ],

                          ),
                        )
                      ],
                    ),
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
