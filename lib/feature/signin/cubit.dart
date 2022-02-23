import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/feature/signin/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninCubit extends Cubit<SigninState>{
  SigninCubit() : super(SigninStateInit());

  static SigninCubit get(context)=>BlocProvider.of(context);

  bool isloading=false;

  void changeVisibility(){
    isloading=!isloading;
    emit(ChangeVisibility());
  }

}