import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Token.dart';
import '../../model/modelsRelatedToHome/FinalsModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';
import 'finals_state.dart';

class FinalsCubit extends Cubit<FinalsState> {
  FinalsCubit() : super(FinalsInitial());

  static FinalsCubit get(Context) => BlocProvider.of<FinalsCubit>(Context);

  FinalsModel? finalsModel;

  Future<void> get_data() async {
    await DioHelper.getData(url: examsEndPoint, token: token).then((value) {
      finalsModel = FinalsModel.fromJson(value.data);
      emit(FinalsSuccess());
      print(value.data);
    }).catchError((e) {
      emit(FinalsFailure());
      print(e);
    });
  }
}
