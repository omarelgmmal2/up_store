import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'on_boarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingStates> {
  static OnBoardingCubit get(context) => BlocProvider.of(context);
  OnBoardingCubit() : super(OnBoardingStates()){
    pageController = PageController();
  }

  late PageController pageController;
  int currentIndex = 0;


  void changeCurrentIndex(int index){
    currentIndex = index;
    emit(ChangeDotState());
  }

  void nextPage(){
    currentIndex++;
    pageController.animateToPage(
      currentIndex,
      duration: Duration(microseconds: 900),
      curve: Curves.easeInOut,
    );
    emit(NextPageState());
  }
}