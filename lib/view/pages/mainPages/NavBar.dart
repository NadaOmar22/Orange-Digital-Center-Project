import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:odc_project/viewmodel/mainCubit/nav_bar_state.dart';

import '../../../viewmodel/mainCubit/nav_bar_cubit.dart';

class NavBar extends StatefulWidget {
  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<NavBar> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavBarCubit(),
      child: BlocConsumer<NavBarCubit, NavBarState>(
        listener: (context, state) {},
        builder: (context, state) {
          NavBarCubit myNavBar = NavBarCubit.get(context);
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: myNavBar.pages.elementAt(myNavBar.currentIndex),
            ),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    backgroundColor: Colors.white,
                    color: Colors.orangeAccent,
                    activeColor: Colors.orangeAccent,
                    tabBackgroundColor: Colors.grey.withOpacity(.5),
                    gap: 10,
                    duration: Duration(seconds: 1),
                    onTabChange: (index) {
                      myNavBar.changepage(index);
                    },
                    tabs: [
                      GButton(icon: Icons.home, text: 'Home'),
                      GButton(icon: Icons.newspaper, text: 'News'),
                      GButton(icon: Icons.settings, text: 'Settings'),
                    ],
                    selectedIndex: myNavBar.currentIndex,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
