import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:odcproject/constant.dart';
import 'package:odcproject/model/lecture_model.dart';
import 'package:odcproject/network/end_points.dart';

import '../../network/dio_helper.dart';

part 'lecture_state.dart';

class LectureCubit extends Cubit<LectureState> {
  LectureCubit() : super(LectureInitial());
  static LectureCubit get(context) => BlocProvider.of(context);
  LectureModel ? lec ;

  void getData(){
    DioHelper.getData(url: lectureEndPoint , token: Token).then((value) {
      lec = LectureModel.fromJson(value.data);
      print("Done");
    });
  }

}
