import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_project/view/components/login_signup/FieldOfForm.dart';
import 'package:odc_project/view/components/core/SubTitle.dart';
import 'package:odc_project/view/components/core/MainTitle.dart';

import '../../../viewmodel/auth/sign_up_cubit.dart';
import '../../components/login_signup/OR_Row.dart';
import 'Login.dart';

class SignUp extends StatelessWidget {
  List<DropdownMenuItem<String>> genders = [
    DropdownMenuItem(child: Text("m"), value: "m"),
    DropdownMenuItem(child: Text("f"), value: "f"),
  ];

  List<DropdownMenuItem<int>> grades = [
    DropdownMenuItem(child: Text('1'), value: 1),
    DropdownMenuItem(child: Text('2'), value: 2),
    DropdownMenuItem(child: Text('3'), value: 3),
    DropdownMenuItem(child: Text('4'), value: 4),
  ];

  List<DropdownMenuItem<String>> universities = [
    DropdownMenuItem(child: Text("Cairo"), value: "Cairo"),
    DropdownMenuItem(child: Text("Helwan"), value: "Helwan"),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          }
        },
        builder: (context, state) {
          SignUpCubit myRegister = SignUpCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Container(
                width: double.infinity,
                height: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        MainTitle(),
                        SizedBox(
                          height: 70.0,
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SubTitle('Sign UP'),
                            SizedBox(height: 20.0),
                            FieldOfFormWithoutIcon('Name',
                                myRegister.nameController, TextInputType.text),
                            SizedBox(height: 10.0),
                            FieldOfFormWithoutIcon(
                                'Email',
                                myRegister.emailController,
                                TextInputType.emailAddress),
                            SizedBox(height: 10.0),
                            FieldOfFormWithIconEnd(
                                'Password',
                                myRegister.passwordController,
                                Icons.remove_red_eye,
                                TextInputType.visiblePassword),
                            SizedBox(height: 10.0),
                            FieldOfFormWithoutIcon(
                                'Phone Number',
                                myRegister.phoneNumberController,
                                TextInputType.phone),
                            SizedBox(height: 20.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Gender',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.orangeAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          DropdownButton(
                                            underline: SizedBox(),
                                            value: 'f',
                                            items: genders,
                                            onChanged: (String? newValue) {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'University',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Container(
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.orangeAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          DropdownButton(
                                            underline: SizedBox(),
                                            value: 'Cairo',
                                            items: universities,
                                            onChanged: (String? newValue) {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Grade',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Container(
                                      height: 50.0,
                                      width: 50.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.orangeAccent),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          DropdownButton(
                                            underline: SizedBox(),
                                            value: 1,
                                            items: grades,
                                            onChanged: (int? newValue) {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 25.0),

                        Container(
                          width: double.infinity,
                          height: 50.0,
                          child: ElevatedButton(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                              ),
                            ),
                            onPressed: () {
                              myRegister.register();
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orangeAccent),
                          ),
                        ),

                        SizedBox(height: 10.0),

                        OR_Row(),

                        SizedBox(height: 10.0),

                        // login button
                        Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: BorderSide(
                                  width: 2.0,
                                  color: Colors.orangeAccent,
                                )),
                          ),
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
