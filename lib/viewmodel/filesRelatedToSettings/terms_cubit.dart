import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../Token.dart';
import '../../model/modelsRelatedToSettings/TermsModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';

part 'terms_state.dart';

class TermsCubit extends Cubit<TermsState> {
  TermsCubit() : super(TermsInitial());

  static TermsCubit get(Context) => BlocProvider.of<TermsCubit>(Context);

  TermsModel? termsModel;

  Future<void> get_data() async {
    await DioHelper.getData(url: termsEndPoint, token: token).then((value) {
      termsModel = TermsModel.fromJson(value.data);
      emit(TermsSuccess());
      print(value.data);
    }).catchError((e) {
      emit(TermsFailure());
      print(e);
    });
  }
}
