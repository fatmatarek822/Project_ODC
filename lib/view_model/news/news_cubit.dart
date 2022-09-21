import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcworkshop2/view_model/news/news_state.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit() : super(NewsInitial());

  static NewsCubit get(context) => BlocProvider.of(context);


}