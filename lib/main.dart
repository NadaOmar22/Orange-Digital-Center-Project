import 'package:flutter/material.dart';
import 'package:odc_project/view/components/core/MainTitle.dart';
import 'package:odc_project/view/components/splashScreen/ProgressBar.dart';
import 'package:odc_project/view/pages/auth/Login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:odc_project/viewmodel/database/network/dio_helper.dart';

void main() async {
  await DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Splash Screen',
        home: AnimatedSplashScreen(
            duration: 4000,
            splash: Column(
              children: [
                MainTitle(),
                SizedBox(
                  height: 30,
                ),
                ProgressBar(),
              ],
            ),
            nextScreen: Login(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Colors.white));
  }
}
