import 'package:bloc/bloc.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/cart/view.dart';
import 'package:e_commerce_app/feature/home//view.dart';
import 'package:e_commerce_app/feature/person/view.dart';
import 'package:e_commerce_app/feature/search/view.dart';
import 'package:flutter/cupertino.dart';



import 'package:flutter_bloc/flutter_bloc.dart';


class BottomNavigationCubit extends Cubit<BottomNavigationState>{
  BottomNavigationCubit( ) : super(BottomNavigationInit());

  static BottomNavigationCubit get(context)=>BlocProvider.of(context);

  var borderConteler=PageController();
  bool isLast=false;

  void changeImage(){
    isLast=!isLast;
    emit(BannerDeatilsChange());
  }


  bool ischange=false;


  bool changeCategories(bool change){

     ischange=change;
     emit(BottomNavigationChangFilter());
     return  change;



  }


  List <Widget> screen=[
    // Home
    HomeView(),
   SearchView(),
    CartView(),
    PersonView()

  ];
  int curent=0;
   changeBottom(v){
     curent=v;
     emit(BottomNavigationChangeBottom());
   }

}