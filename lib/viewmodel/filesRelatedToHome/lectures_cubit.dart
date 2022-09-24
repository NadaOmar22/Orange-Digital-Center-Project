import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../Token.dart';
import '../../model/modelsRelatedToHome/LecturesModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';

part 'lectures_state.dart';

class LecturesCubit extends Cubit<LecturesState> {
  LecturesCubit() : super(LecturesInitial());

  static LecturesCubit get(Context) => BlocProvider.of<LecturesCubit>(Context);

  LecturesModel? lecturesModel;

  Future<void> get_data() async {
    await DioHelper.getData(url: lectureEndPoint, token: token).then((value) {
      lecturesModel = LecturesModel.fromJson(value.data);
      emit(LecturesSuccess());
      print(value.data);
    }).catchError((e) {
      emit(LecturesFailure());
      print(e);
    });
  }
}
