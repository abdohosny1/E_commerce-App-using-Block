import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/all_categories/view.dart';
import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/favourit/view.dart';

import 'package:e_commerce_app/feature/home//units/product_banner.dart';
import 'package:e_commerce_app/feature/home//units/product_item.dart';
import 'package:e_commerce_app/feature/home/producr_cubit.dart';
import 'package:e_commerce_app/feature/home/units/list_banner.dart';
import 'package:e_commerce_app/feature/home/units/product_banner_page.dart';
import 'package:e_commerce_app/widget/SmoothPage.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'units/product_chose.dart';

class HomeView extends StatelessWidget {
  const HomeView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
        builder:(context,state){
          return SafeArea(child: Scaffold(
            body: NestedScrollView(
              headerSliverBuilder: (context,innerBoxSxreolde){
                return [
                  SliverAppBar(
                    // expandedHeight: 100,
                    title:  Text("Home",style: style_Heder,),
                    elevation: 0,
                    automaticallyImplyLeading: false,
                    backgroundColor: kWhiteColors,
                  //  pinned: true,
                  //   forceElevated: innerBoxSxreolde,
                  // floating: true,
                  //   flexibleSpace: FlexibleSpaceBar(
                  //     centerTitle: true,
                  //     title:Text("ddf") ,
                  //
                  //
                  //   ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(MediaQuery.of(context).size.height/3.5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Container(
                            height:70,
                            width: MediaQuery.of(context).size.width-60,

                            child: ListView.separated(
                              separatorBuilder: (context,index)=>SizedBox(width: 20,),
                              itemCount: list_banner.length,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context,index){
                                return  ProductBanner(model: list_banner[index],);
                              },
                            ),
                          ),

                          // BlocBuilder<HomeCubit,HomeState>(
                          //     builder: (context,state) {
                          //       var cubit = HomeCubit.get(context);
                          //       return Column(
                          //         children: [
                          //           SmoothPageDesgin(
                          //             controller: cubit.borderConteler,
                          //             list: list_banner,
                          //             colors: kWhiteColors,
                          //             hight: 10,
                          //             expansio: 4,
                          //             width: 10,
                          //           ),
                          //           SizedBox(height: 20,),
                          //
                          //         ],
                          //       );
                          //     }
                          SizedBox(height: 20,),

                          BlocBuilder<BottomNavigationCubit,BottomNavigationState>(builder: (context,state){
                            return SmoothPageDesgin(
                              controller: BottomNavigationCubit.get(context).borderConteler,
                              list: list_banner,
                              colors: Colors.grey.shade400,
                              hight: 8,
                              expansio: 2,
                              width: 8,
                            );
                          }),

                          SizedBox(height: 20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ProductChoses(
                                text: "Categories",
                                icon: Icons.menu_open,
                                ontap: ()=>MagicRouter.navigateTo(AllCategories()),),
                              ProductChoses(
                                text: "Favourites",
                                icon: Icons.star_border,
                                ontap: ()=>MagicRouter.navigateTo(FavouritView()),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),

                          Center(
                            child: Text("Sales",style: TextStyle(
                                color: kBlackColors,fontWeight: FontWeight.bold,fontSize: 30
                            ),),
                          ),

                        ],
                      ),
                    ),




                  ),






                ];

              },
              body: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          color: kBackgroundColor,
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: GridView.builder(
                              physics: BouncingScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: .9

                              ),
                              itemCount: 10,
                              itemBuilder: (context,index){
                                return ProductItem();
                              }),
                        ),
                      ),




                    ],
                  ),
                ),
              ),
            ),
          ));
        });
  }
}
