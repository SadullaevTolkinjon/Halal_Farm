import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal_farm/view/home_page/home_page_state/home_page_state.dart';

class HomePageBloc extends Cubit<HomePageState> {
  HomePageBloc() : super(InitialState());
}
