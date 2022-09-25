import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odcproject/settings.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/home_screen.dart';
import 'package:odcproject/view/componant/pages/homepage_screens/releated_screens/news_screen.dart';

part 'laout_state.dart';

class LaoutCubit extends Cubit<LaoutState> {
  LaoutCubit() : super(LaoutInitial());
  static LaoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> pages = [Home() , News() , Settings()];

  void changeIndex(int index){
    currentIndex = index;
    emit(LayoutChanged());
  }


}
