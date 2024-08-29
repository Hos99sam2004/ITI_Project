import 'package:bloc/bloc.dart';

import 'package:flutter/material.dart';
import 'package:hos/Presentations/Rigestars/core/Api/Api_consumer.dart';
import 'package:hos/Presentations/Rigestars/core/Api/endPoinnts.dart';
import 'package:hos/Presentations/Rigestars/core/errors/exceptions.dart';
import 'package:hos/Presentations/Rigestars/cubit/Model/LoginModel.dart';
import 'package:hos/Presentations/Rigestars/cubit/Model/Sign_UpModel.dart';

import 'package:meta/meta.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;
  TextEditingController loginpassword = TextEditingController();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController SignUPpassword = TextEditingController();
  TextEditingController SignUPEmail = TextEditingController();
  TextEditingController PhoneNumber = TextEditingController();
  TextEditingController SignUPPhone = TextEditingController();
  TextEditingController SignUPname = TextEditingController();
  LoginModel loginModel = LoginModel();
  Sign_UpModel signup = Sign_UpModel();
  bool obscureText = true;

  void login({required String email, required String password}) async {
    emit(UserloginLooding());
    try {
      final response = await api.post(Endpoints.login, data: {
        ApiKey.email: loginEmail.text,
        ApiKey.password: loginpassword.text,
      });
      loginModel = LoginModel.fromJson(response.data);
      if (loginModel.status == true) {
        emit(UserloginSucess(loginModel.message!));
      } else {
        emit(UserloginError(error: loginModel.message!));
      }
    } on ServerException catch (e) {
      emit(UserloginError(error: e.errormodel.errormessage));
    }
  }

  void Sign_Up({required String email, required String password,required String phone,required String name}) async {
    emit(UserSignLooding());
    try {
      final response = await api.post(Endpoints.register, data: {
        ApiKey.email: SignUPEmail.text,
        ApiKey.name: SignUPname.text,
        ApiKey.phone: SignUPPhone.text,
        ApiKey.password: SignUPpassword.text,
      });
      signup = Sign_UpModel.fromJson(response.data);
      if (signup.status == true) {
        emit(UserSignSucess(loginModel.message!));
      } else {
        emit(UserSignError(error: signup.message!));
      }
    } on ServerException catch (e) {
      emit(UserSignError(error: e.errormodel.errormessage));
    }
  }
}


         /// nasr.Hossam@gmail.com
         /// 992004
         /// https://student.valuxapps.com/api/

