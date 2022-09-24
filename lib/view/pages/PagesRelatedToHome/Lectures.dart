import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../viewmodel/filesRelatedToHome/lectures_cubit.dart';
import '../../components/core/UsableCard.dart';
import '../../components/core/AppBarOfPagesRelatedToHome.dart';

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LecturesCubit()..get_data(),
      lazy: true,
      child: BlocConsumer<LecturesCubit, LecturesState>(
        listener: (context, state) {},
        builder: (context, state) {
          LecturesCubit myLectures = LecturesCubit.get(context);
          return Builder(builder: (context) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBarOfPagesRelatedToHome(context, 'Lectures'),
                body: myLectures.lecturesModel == null
                    ? Center(child: CircularProgressIndicator())
                    : ListView.builder(
                        itemCount: myLectures.lecturesModel!.data!.length,
                        itemBuilder: (context, index) {
                          return UsableCard(
                            myLectures
                                .lecturesModel!.data![index].lectureSubject
                                .toString(),
                            myLectures.lecturesModel!.data![index].lectureDate
                                .toString(),
                            myLectures
                                .lecturesModel!.data![index].lectureStartTime
                                .toString(),
                            myLectures
                                .lecturesModel!.data![index].lectureEndTime
                                .toString(),
                          );
                        },
                      ),
              ),
            );
          });
        },
      ),
    );
  }
}
