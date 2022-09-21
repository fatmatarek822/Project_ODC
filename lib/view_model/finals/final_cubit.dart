import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view_model/finals/final_state.dart';

class FinalCubit extends Cubit<FinalState>{
  FinalCubit() : super(FinalInitial());

  static FinalCubit get(context) => BlocProvider.of(context);


}