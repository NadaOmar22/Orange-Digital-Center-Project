import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../model/auth/RegisterModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static SignUpCubit get(Context) => BlocProvider.of(Context);

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  RegisterModel? registerModel;

  Future<void> register() async {
    var x = {
      'name': nameController.text.toString(),
      "email": emailController.text.toString(),
      "password": passwordController.text.toString(),
      "phoneNumber": phoneNumberController.text.toString(),
      "gender": 'm',
      "universityId": 1,
      "gradeId": 4,
      "roleId": 2,
    };
    await DioHelper.postData(url: registerEndPoint, data: x).then((value) {
      registerModel = RegisterModel.fromJson(value.data);
      emit(SignUpSuccess());
      print(value.data);
    }).catchError((e) {
      emit(SignUpFailure());
      print(e.toString());
    });
  }
}
