import 'package:e_commerce_app/const/colors.dart';
import 'package:e_commerce_app/const/style.dart';
import 'package:e_commerce_app/cort/validator/validitor.dart';
import 'package:e_commerce_app/feature/bottom_navigation/cubit.dart';
import 'package:e_commerce_app/feature/bottom_navigation/state.dart';
import 'package:e_commerce_app/feature/search/units/search_item_last_viewed.dart';
import 'package:e_commerce_app/widget/text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'units/serch_item_clear_history.dart';
part 'units/search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit,BottomNavigationState>(
        builder:(context,state){
          return SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Text("Search",style: style_Heder,),
                    SizedBox(height: 20,),
                    SearchFiled(),
                    SizedBox(height: 30,),
                    Text("Last Viewed",style: style_Categories,),

                Container(
                  height: 250,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                      itemBuilder: (context,index){
                        return    SearchItemLastViewed();
                      }
                  ),
                ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Lasted Search",style: style_Categories,),
                        TextButtonWidget(
                          ontap: (){},
                          text: "Clear all history",
                          textcolor: kGrayColors,
                          sizetext: 15,
                        )
                      ],
                      
                    ),
                 Expanded(
                   child: ListView.builder(
                     itemCount: 7,
                       itemBuilder: (context,index){
                         return   SearchItemClearHistory();
                       }
                   ),
                 )
                    



                  ],
                ),
              ),
            ),
          );
        });
  }
}
