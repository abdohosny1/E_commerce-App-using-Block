import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/onBordering/state.dart';
import 'package:e_commerce_app/feature/show_connection/view.dart';
import 'package:e_commerce_app/feature/signin/view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBorderCubit extends Cubit<OnBorderStae>{
  OnBorderCubit() : super(OnBorderInit());

  static OnBorderCubit get(context)=>BlocProvider.of(context);

  var borderConteler=PageController();


  bool isLast=false;

  void changeVisibility(){
    isLast=!isLast;
    emit(OnBorderChange());
  }


void submit(){
  // CashHelper.saveData(key: 'OnBoredering', value: true).then((value) {
  //   if(value){
  //     Navigator.of(context).pushAndRemoveUntil(
  //         MaterialPageRoute(builder: (e)=>MainScreen(app:widget.app)),(r)=>false);
  //
  //   }
  // });
  MagicRouter.navigateTo(ShowConnexionView());
}

@override
  Future<void> close() {
    // TODO: implement close
  borderConteler.dispose();
    return super.close();
  }

}