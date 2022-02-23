import 'package:e_commerce_app/feature/onBordering/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bulid_bordering_item.dart';


class PageViewDesginWidget extends StatelessWidget {
  PageViewDesginWidget({Key? key,required this.list}) : super(key: key);

    List<dynamic> list=[];
  @override
  Widget build(BuildContext context) {
    var cubit=OnBorderCubit.get(context);
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
            itemBuilder: (context,index) =>BulidBorderingItem(
                model:list[index]!),
            itemCount: list.length,
          );
        },
      ),
    );
  }
}
