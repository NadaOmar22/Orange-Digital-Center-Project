import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../Token.dart';
import '../../model/modelsRelatedToSettings/FAQModel.dart';
import '../database/network/dio_helper.dart';
import '../database/network/end_points.dart';

part 'faq_state.dart';

class FaqCubit extends Cubit<FaqState> {
  FaqCubit() : super(FaqInitial());
  static FaqCubit get(Context) => BlocProvider.of<FaqCubit>(Context);

  FAQModel? faqModel;

  Future<void> get_data() async {
    await DioHelper.getData(url: faqEndPoint, token: token).then((value) {
      faqModel = FAQModel.fromJson(value.data);
      emit(FaqSuccess());
      print(value.data);
    }).catchError((e) {
      emit(FaqFailure());
      print(e);
    });
  }
}
