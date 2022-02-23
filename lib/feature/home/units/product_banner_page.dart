import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/home/producr_cubit.dart';
import 'package:e_commerce_app/feature/home/units/product_banner.dart';
import 'package:e_commerce_app/feature/onBordering/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class PageViewBannerWidget extends StatelessWidget {
  PageViewBannerWidget({Key? key,required this.list}) : super(key: key);

  List<dynamic> list=[];
  @override
  Widget build(BuildContext context) {
    var cubit=BottomNavigationCubit.get(context);
    return  Expanded(
      child: BlocBuilder(
        bloc: cubit,
        builder: (context,state){
          return PageView.builder(
            onPageChanged: (int index){
              if(index==list.length-1){
                cubit.isLast=true;

              }else{
                cubit.isLast=false;

                // cubit.changeVisibility();
              }
            },
            controller: cubit.borderConteler,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index) =>ProductBanner(
                model:list[index]!),
            itemCount: list.length,
          );
        },
      ),
    );
  }
}
