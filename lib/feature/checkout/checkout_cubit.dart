import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/feature/checkout/units/list_address.dart';
import 'package:e_commerce_app/feature/checkout/units/list_check.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'checkout_state.dart';

class CheckoutCubit extends Cubit<CheckoutState> {
  CheckoutCubit() : super(CheckoutInitial());
  static CheckoutCubit get(context)=>BlocProvider.of(context);

  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();



  List<CheckBoxListTileAddress> checkBoxListTileAddress =
  CheckBoxListTileAddress.getUsers();

  void itemChange(bool val, int index) {

    checkBoxListTileModel[index].isCheck = val;

     emit(CheckoutChangCheckBox());
  }

  void itemChangeAddress(bool val, int index) {

    checkBoxListTileModel[index].isCheck = val;

    emit(CheckoutChangAddress());
  }


}
