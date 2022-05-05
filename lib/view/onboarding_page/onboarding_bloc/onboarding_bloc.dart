import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:halal_farm/view/onboarding_page/onboarding_state/onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(InitialState());
  int onboradingIndex = 0;
  void changeIndexOfOn(int index) {
    onboradingIndex = index;
    emit(ChangeValState());
  }
}
