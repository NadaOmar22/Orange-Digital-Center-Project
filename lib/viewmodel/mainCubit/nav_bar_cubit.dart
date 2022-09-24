import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view/pages/mainPages/Home.dart';
import '../../view/pages/mainPages/News.dart';
import '../../view/pages/mainPages/Settings.dart';
import 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());
  static NavBarCubit get(Context) => BlocProvider.of(Context);

  List<Widget> pages = <Widget>[
    Home(),
    News(),
    Settings(),
  ];

  int currentIndex = 0;

  void changepage(int index) {
    currentIndex = index;
    emit(NavBarNewState());
  }
}
