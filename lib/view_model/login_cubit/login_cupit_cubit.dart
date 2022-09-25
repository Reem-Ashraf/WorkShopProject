import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odcproject/model/login_model.dart';
import 'package:odcproject/network/dio_helper.dart';
import 'package:odcproject/network/end_points.dart';
import '../../constant.dart';
import '../../view/componant/pages/homepage_screens/home_screen.dart';
import '../../view/componant/pages/layout_screen.dart';
import '../state.dart';

class LoginCubit extends Cubit<CubitState> {
  LoginCubit() : super(InitialCubitState());
  static LoginCubit get(context)=> BlocProvider.of(context);
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  LoginModel? loginModel;

  void login(context){
    var json = {
      'email': emailcontroller.text.toString(),
      'password':passwordcontroller.text.toString(),
    };
    DioHelper.postData(url: loginEndPoint, data: json).then((value) {
      loginModel = LoginModel.fromJson(value.data);
      if(value.statusCode == 200){
        Token = loginModel!.data!.accessToken.toString();
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Layout()));
      }
      print("object");
      emit(LoginSucsessCubitState());
    });
  }
}
