import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../product_cubit.dart';
import 'bulidImage.dart';


class PageViewImage extends StatelessWidget {
  PageViewImage({Key? key,this.list}) : super(key: key);
    List<dynamic>? list;
  @override
  Widget build(BuildContext context) {
    var cubit=ProductCubit.get(context);
    return  Expanded(
      child: BlocBuilder(
        bloc: cubit,
        builder: (context,state){
          return PageView.builder(
            onPageChanged: (int index){
              if(index==list!.length-1){
               cubit.changeImage();

              }else{
               cubit.changeImage();
              }
            },
            controller: cubit.borderConteler,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index) =>BulidImage(
                text:list![index]),
            itemCount: list!.length,
          );
        },
      ),
    );
  }
}
