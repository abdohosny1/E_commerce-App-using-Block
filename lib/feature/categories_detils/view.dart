import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/router/router.dart';
import 'package:e_commerce_app/feature/bottom_navigation//cubit.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/home/units/product_item.dart';
import 'package:e_commerce_app/widget/appbar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesDetails extends StatelessWidget {
  const CategoriesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context,inerBox){
            return [
              SliverAppBar(
                backgroundColor: kWhiteColors,
               elevation: 0,
               automaticallyImplyLeading: false,
               expandedHeight: 150,
                  title: IconButton(
                    icon: Icon(Icons.arrow_back,color: kBlackColors,),
                    onPressed: ()=>MagicRouter.pop(),),
                //  pinned: true,
                //   forceElevated: inerBox,
                // floating: true,
                //   flexibleSpace: FlexibleSpaceBar(
                //     centerTitle: true,
                //     title:Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text("Laptop",style: style_Heder,),
                //
                //     IconButton(
                //         onPressed: (){}, icon: Icon(Icons.widgets,color: kIconColors,))
                //   ],
                // ) ,
                //
                //
                //   )
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Laptop",style: style_Heder,),

                        IconButton(
                            onPressed: (){}, icon: Icon(Icons.widgets,color: kIconColors,))
                      ],
                    ),
                  ),


                ),
              )

            ];
          },
          body:Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              children: [

                Expanded(
                  child: Container(
                    color: kBackgroundColor,
                    padding: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: GridView.builder(
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
                )

              ],
            ),
          ) ,
        )

      ),
    )
    ;
  }
}
