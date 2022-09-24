import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odc_project/viewmodel/database/network/dio_helper.dart';

import '../../model/auth/LoginModel.dart';
import '../database/network/end_points.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(Context) => BlocProvider.of(Context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginModel? loginModel;

  login() async {
    var x = {
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
    };
    await DioHelper.postData(url: loginEndPoint, data: x).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      emit(LoginSuccess());
      print(value.data);
    }).catchError((e) {
      emit(LoginFailure());
      print(e);
    });
  }
}
