import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/feature/signup/staate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState>{
  SignUpCubit() : super(SignUpIniit());

  static SignUpCubit get(context)=>BlocProvider.of(context);

  bool isloading=false;
  bool isConfirm=false;

  void changeVisibility(){
    isloading=!isloading;
    isConfirm=!isConfirm;
    emit(SignUpChangeVisibility());
  }

}