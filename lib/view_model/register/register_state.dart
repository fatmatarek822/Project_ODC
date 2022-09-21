
import 'package:odcworkshop2/view/pages/register.dart';

abstract class RegisterState {}
class RegisterInitial extends RegisterState{}

class ChangeDropDownState extends RegisterState{}

class RegisterSuccess extends RegisterState {}

class RegisterError extends RegisterState {}

class ChangePasswordVisibilityRegisterState extends RegisterState{}