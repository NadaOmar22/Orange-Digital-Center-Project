import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../Token.dart';
import '../../model/modelsRelatedToHome/SectionsModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';

part 'sections_state.dart';

class SectionsCubit extends Cubit<SectionsState> {
  SectionsCubit() : super(SectionsInitial());

  static SectionsCubit get(Context) => BlocProvider.of<SectionsCubit>(Context);

  SectionsModel? sectionsModel;

  Future<void> get_data() async {
    await DioHelper.getData(url: sectionEndPoint, token: token).then((value) {
      sectionsModel = SectionsModel.fromJson(value.data);
      emit(SectionsSuccess());
      print(value.data);
    }).catchError((e) {
      emit(SectionsFailure());
      print(e);
    });
  }
}
