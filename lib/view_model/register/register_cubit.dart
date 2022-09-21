
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view_model/register/register_state.dart';

class RegisterCubit extends Cubit<RegisterState>{
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  String? dropdownvalue = 'Male';
  List<String> Gender = [
    'Male',
    'Female',
  ];

  String? dropdownvalue1 = 'AUC';
  List<String> University = [
    'AUC',
    'Helwan',
    'Cairo',
  ];

  String? dropdownvalue2 = 'A';
  List<String> Grade = [
    'A',
    'B',
    'C',
    'D',
  ];


  void ChangeDropDown1(String? newValue){
  dropdownvalue = newValue;
  emit(ChangeDropDownState());
}
  void ChangeDropDown2(String? newValue){
    dropdownvalue1 = newValue;
    emit(ChangeDropDownState());
  }
  void ChangeDropDown3(String? newValue){
    dropdownvalue2 = newValue;
    emit(ChangeDropDownState());
  }


}