import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/categories_detils/view.dart';

import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
        builder:(context,state){
          return Scaffold
            (
            backgroundColor: kWhiteColors,
            appBar: AppBarWidget(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Categories",style: style_Heder,),
                  SizedBox(height: 20,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50.0,top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("All",style: style_Categories,),
                        ),
                        Expanded(
                          child: Container(
                            color: kBackgroundColor,
                            child: ListView.separated(
                              separatorBuilder: (BuildContext context, int index) {
                                return SizedBox(height: 20,);
                              },
                                itemCount: 10,
                                itemBuilder: (context,index){
                                  return InkWell(
                                    onTap: ()=>MagicRouter.navigateTo(CategoriesDetails()),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(5)),
                                        color: kWhiteColors,

                                      ),
                                      padding: EdgeInsets.all(20),
                                      child: Text("Laptop",style: style_Categories,),
                                    ),
                                  );
                                },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
                ],
              ),
            ),

          );
        });
  }
}
