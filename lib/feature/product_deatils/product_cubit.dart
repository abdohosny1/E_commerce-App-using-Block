import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  static ProductCubit get(context)=>BlocProvider.of(context);

  var borderConteler=PageController();

  bool isLast=false;

  void changeImage(){
    isLast=!isLast;
    emit(ProductDeatilsChange());
  }

}
