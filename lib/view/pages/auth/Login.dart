import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view/components/login_signup/FieldOfForm.dart';
import 'package:odc_project/view/components/core/SubTitle.dart';
import 'package:odc_project/view/components/core/MainTitle.dart';
import 'package:odc_project/view/pages/auth/SignUp.dart';

import '../../../viewmodel/auth/login_cubit.dart';
import '../../components/login_signup/OR_Row.dart';
import '../mainPages/NavBar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NavBar()));
          }
        },
        builder: (context, state) {
          LoginCubit myLogin = LoginCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20.0,
                        ),
                        MainTitle(),
                        SizedBox(
                          height: 70.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubTitle('Login'),
                            SizedBox(
                              height: 40.0,
                            ),
                            FieldOfFormWithoutIcon(
                                'Email',
                                myLogin.emailController,
                                TextInputType.emailAddress),
                            SizedBox(
                              height: 15.0,
                            ),
                            FieldOfFormWithIconEnd(
                                'Password',
                                myLogin.passwordController,
                                Icons.remove_red_eye,
                                TextInputType.visiblePassword),
                            SizedBox(
                              height: 10.0,
                            ),
                            TextButton(
                              child: Text(
                                'Forget Password ?',
                                style: TextStyle(
                                  color: Colors.orangeAccent,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // log in button
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: ElevatedButton(
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                onPressed: () {
                                  myLogin.login();
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.orangeAccent,
                                  side: BorderSide(
                                    width: 4.0,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 10.0,
                            ),

                            OR_Row(),

                            SizedBox(
                              height: 10.0,
                            ),

                            // sign up button
                            Container(
                              width: double.infinity,
                              height: 50.0,
                              child: ElevatedButton(
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.orangeAccent,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUp()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                    width: 2.0,
                                    color: Colors.orangeAccent,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
