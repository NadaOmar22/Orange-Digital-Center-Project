import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odc_project/model/modelsRelatedToHome/MidtermsModel.dart';

import '../../Token.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';

part 'midterms_state.dart';

class MidtermsCubit extends Cubit<MidtermsState> {
  MidtermsCubit() : super(MidtermsInitial());

  static MidtermsCubit get(Context) => BlocProvider.of<MidtermsCubit>(Context);

  MidtermsModel? midtermsModel;

  Future<void> get_data() async {
    await DioHelper.getData(url: examsEndPoint, token: token).then((value) {
      midtermsModel = MidtermsModel.fromJson(value.data);
      emit(MidtermsSuccess());
      print(value.data);
    }).catchError((e) {
      emit(MidtermsFailure());
      print(e);
    });
  }
}
