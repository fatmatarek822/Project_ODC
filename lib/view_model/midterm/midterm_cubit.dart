
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view_model/midterm/midterm_state.dart';

class MidtermCubit extends Cubit<MidtermState>{
  MidtermCubit() : super(MidtermInitial());

  static MidtermCubit get(context) => BlocProvider.of(context);


}